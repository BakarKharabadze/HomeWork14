//
//  ViewController.swift
//  ContactsApp
//
//  Created by Bakar Kharabadze on 4/12/24.
//

import UIKit


class ViewController: UIViewController {
    
    //MARK: properties
    private let personsTableView = UITableView()
    private let alphabet = "abcdefghijklmnopqrstuvwxyz#"
    private var models = [Group]()
    
    private let personsArray: [String: [Person]] = [
        
        "A": [Person(gender: "Female", name: "Ana", lastName: "Ioramashvili", age: 30, hobby: "Cooking"), Person(gender: "Female", name: "Ana", lastName: "Namgaladze", age: 26, hobby: "Watching movies"), Person(gender: "Male", name: "Aleksandre", lastName: "Saroiani", age: 33, hobby: "Surfing"), Person(gender: "Male", name: "Akaki", lastName: "Titberidze", age: 31, hobby: "Fencing")],
        "B": [Person(gender: "Female", name: "Barbare", lastName: "Tepnadze", age: 26, hobby: "Swimming"), Person(gender: "Male", name: "Bakar", lastName: "Kharabadze", age: 25, hobby: "Playing football"), Person(gender: "Male", name: "Begi", lastName: "Kopaliani", age: 30, hobby: "Playing volleyball")],
        "D": [Person(gender: "Male", name: "Data", lastName: "Robakidze", age: 34, hobby: "Cycling")],
        "E": [Person(gender: "Female", name: "Elene", lastName: "Donadze", age: 25, hobby: "Painting")],
        "G": [Person(gender: "Male", name: "Giorgi", lastName: "Michitashvili", age: 31, hobby: "Bird watching"), Person(gender: "Male", name: "Gega", lastName: "Tatulishvili", age: 32, hobby: "Playing drums"), Person(gender: "Female", name: "Gvantsa", lastName: "Gvagvalia", age: 28, hobby: "Paintball")],
        "I": [Person(gender: "Female", name: "Irina", lastName: "Datoshvili", age: 28, hobby: "Singing")],
        "L": [Person(gender: "Male", name: "Luka", lastName: "Kharatishvili", age: 23, hobby: "Writing"), Person(gender: "Male", name: "Luka", lastName: "Gujejiani", age: 28, hobby: "Meditation")],
        "M": [Person(gender: "Female", name: "Mariam", lastName: "Sreseli", age: 27, hobby: "Traveling")],
        "N": [Person(gender: "Male", name: "Nodar", lastName: "Ghachava", age: 30, hobby: "Fishing"), Person(gender: "Female", name: "Nini", lastName: "Bardavelidze", age: 29, hobby: "Dancing"), Person(gender: "Female", name: "Nutsa", lastName: "Beriashvili", age: 31, hobby: "Photography"), Person(gender: "Male", name: "Nika", lastName: "Kakhniashvili", age: 33, hobby: "Playing piano")],
        "R": [Person(gender: "Female", name: "Raisa", lastName: "Badalova", age: 29, hobby: "Skiing")],
        "S": [Person(gender: "Male", name: "Sandro", lastName: "Gelashvili", age: 28, hobby: "Playing chess"), Person(gender: "Female", name: "Salome", lastName: "Topuria", age: 30, hobby: "Yoga"), Person(gender: "Male", name: "Sandro", lastName: "Kupatadze", age: 27, hobby: "Woodworking")],
        "T": [Person(gender: "Male", name: "Temuri", lastName: "Chitashvili", age: 35, hobby: "Reading"), Person(gender: "Male", name: "Tornike", lastName: "Elqanashvili", age: 22, hobby: "Gaming"), Person(gender: "Female", name: "Tamuna", lastName: "Kakhidze", age: 27, hobby: "Gardening")],
        "V": [Person(gender: "Male", name: "Valeri", lastName: "Mekhashishvili", age: 32, hobby: "Playing guitar"), Person(gender: "Male", name: "Vano", lastName: "Kvakhadze", age: 34, hobby: "Playing basketball")]
    ]
    
    //MARK: life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    //MARK: Setups
    private func setup() {
        setupData()
        setupPersonsTableView()
        setupNavigationController()
    }
    
    private func setupData() {
        for (key, value) in personsArray {
            models.append(Group(title: key, persons: value))
        }
        models = models.sorted(by: { $0.title < $1.title })
    }
    
    private func setupNavigationController() {
        title = "iOS Squad"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    private func setupPersonsTableView() {
        view.addSubview(personsTableView)
        
        personsTableView.translatesAutoresizingMaskIntoConstraints = false
        personsTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        personsTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        personsTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        personsTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        personsTableView.dataSource = self
        personsTableView.contentInset.top = 20
        
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: personsTableView.frame.width, height: 50))
        let imageView = UIImageView(image: UIImage(named: "accountPhoto"))
        imageView.frame = CGRect(x: 16, y: 0, width: 60, height: 60)
        headerView.addSubview(imageView)
        let symbolImage = UIImageView(image: UIImage(systemName: "chevron.right"))
        symbolImage.tintColor = .gray
        symbolImage.frame = CGRect(x: 340, y: 30, width: 15, height: 15)
        
        let label = UILabel(frame: CGRect(x: 90, y: 20, width: 230, height: 28))
        label.font = UIFont.systemFont(ofSize: 28)
        label.text = "Bakar Kharabadze"
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        headerView.addGestureRecognizer(tap)
        personsTableView.tableHeaderView = headerView
        
        headerView.addSubview(label)
        headerView.addSubview(symbolImage)
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        navigationController?.pushViewController(PersonsInfoViewController(), animated: false)
    }
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        models.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        models[section].persons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let person = models[indexPath.section].persons[indexPath.row]
        cell.textLabel?.text = person.name + " " + person.lastName
        
        let symbolImage = UIImageView(image: UIImage(systemName: "chevron.right"))
        symbolImage.tintColor = .gray
        cell.accessoryView = symbolImage
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        models[section].title
    }
    
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        Array(alphabet.uppercased()).compactMap( { "\($0)" } )
    }
    
    func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int {
        guard let targetIndex = models.firstIndex(where: { $0.title == title }) else {
            return 0
        }
        return targetIndex
    }
}


