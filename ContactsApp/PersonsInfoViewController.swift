//
//  PersonsInfoViewController.swift
//  ContactsApp
//
//  Created by Bakar Kharabadze on 4/12/24.
//

import UIKit

class PersonsInfoViewController: UIViewController {
    
    //MARK: Properties
    private let mainStackView = UIStackView()
    private let profileImageView = UIImageView()
    private let fullNameLabel = UILabel()
    private let middleStackView = UIStackView()
    private let genderStackView = UIStackView()
    private let genderLabel = UILabel()
    private let genderAnswerLabel = UILabel()
    private let separatorView = UIView()
    private let ageStackView = UIStackView()
    private let ageLabel = UILabel()
    private let ageAnswerLabel = UILabel()
    private let secondSeparatorView = UIView()
    private let hobbyStackView = UIStackView()
    private let hobbyLabel = UILabel()
    private let hobbyAnswerLabel = UILabel()
    
    private let mainStackViewColor = UIColor(hexString: "#474747")
    private let separatorViewColor = UIColor(hexString: "#AAAAAA")
    
    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        view.backgroundColor = .lightGray
        mainStackView.setCustomSpacing(28, after: profileImageView)
    }
    
    //MARK: Setups
    func setup() {
        setupMainStackView()
        setupProfileImageView()
        setupFullNameLabel()
        setupMiddleStackView()
        setupGenderStackView()
        setupGenderLabel()
        setupGenderAnswerLabel()
        setupSeparatorView()
        setupAgeStackView()
        setupAgeLabel()
        setupAgeAnswerLabel()
        setupSecondSeparatorView()
        setupHobbyStackView()
        setupHobbyLabel()
        setupHobbyAnswerLabel()
    }
    
    func setupMainStackView() {
        view.addSubview(mainStackView)
        
        mainStackView.axis = .vertical
        mainStackView.isLayoutMarginsRelativeArrangement = true
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        mainStackView.spacing = 30
        mainStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        mainStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        mainStackView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        mainStackView.layoutMargins = UIEdgeInsets(top: -50, left: 90, bottom: 15, right: 90)
        mainStackView.backgroundColor = mainStackViewColor
    }
    
    private func setupProfileImageView() {
        mainStackView.addArrangedSubview(profileImageView)
        
        profileImageView.image = UIImage(named: "accountPhoto")
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        profileImageView.contentMode = .scaleAspectFill
        profileImageView.heightAnchor.constraint(equalToConstant: 184).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 184).isActive = true
    }
    
    private func setupFullNameLabel() {
        fullNameLabel.text = "Bakar Kharabadze"
        fullNameLabel.font = UIFont.systemFont(ofSize: 22)
        fullNameLabel.textColor = .white
        fullNameLabel.textAlignment = .center
        
        mainStackView.addArrangedSubview(fullNameLabel)
    }
    
    private func setupMiddleStackView() {
        view.addSubview(middleStackView)
        
        middleStackView.axis = .vertical
        middleStackView.spacing = 8
        middleStackView.isLayoutMarginsRelativeArrangement = true
        middleStackView.translatesAutoresizingMaskIntoConstraints = false
        middleStackView.topAnchor.constraint(equalTo: mainStackView.bottomAnchor, constant: 20).isActive = true
        middleStackView.layoutMargins = UIEdgeInsets(top: 14, left: 20, bottom: 0, right: 20)
        middleStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
        middleStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
        middleStackView.layer.cornerRadius = 15
        middleStackView.backgroundColor = .white
    }
    
    private func setupGenderStackView() {
        middleStackView.addArrangedSubview(genderStackView)
        genderStackView.spacing = 0
        genderStackView.distribution = .equalSpacing
        
    }
    
    private func setupGenderLabel() {
        genderLabel.text = "Gender: "
        genderLabel.font = UIFont.systemFont(ofSize: 18)
        
        genderStackView.addArrangedSubview(genderLabel)
    }
    
    private func setupGenderAnswerLabel() {
        genderAnswerLabel.text = "Male"
        genderAnswerLabel.font = UIFont.systemFont(ofSize: 18)
        
        genderStackView.addArrangedSubview(genderAnswerLabel)
    }
    
    private func setupSeparatorView() {
        separatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        separatorView.backgroundColor = separatorViewColor
        
        middleStackView.addArrangedSubview(separatorView)
    }
    
    private func setupAgeStackView() {
        middleStackView.addArrangedSubview(ageStackView)
        
        ageStackView.spacing = 0
        ageStackView.distribution = .equalSpacing
    }
    
    private func setupAgeLabel() {
        ageLabel.text = "Age (years):"
        ageLabel.font = UIFont.systemFont(ofSize: 18)
        
        ageStackView.addArrangedSubview(ageLabel)
    }
    
    private func setupAgeAnswerLabel() {
        ageAnswerLabel.text = "24 (2000)"
        ageAnswerLabel.font = UIFont.systemFont(ofSize: 18)
        
        ageStackView.addArrangedSubview(ageAnswerLabel)
    }
    
    private func setupSecondSeparatorView() {
        secondSeparatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        secondSeparatorView.backgroundColor = separatorViewColor
        
        middleStackView.addArrangedSubview(secondSeparatorView)
    }
    
    private func setupHobbyStackView() {
        middleStackView.addArrangedSubview(hobbyStackView)
        
        hobbyStackView.translatesAutoresizingMaskIntoConstraints = false
        hobbyStackView.isLayoutMarginsRelativeArrangement = true
        hobbyStackView.spacing = 0
        hobbyStackView.layoutMargins = UIEdgeInsets(top: 0, left: 0, bottom: 5, right: 0)
        hobbyStackView.distribution = .equalSpacing
    }
    
    private func setupHobbyLabel() {
        hobbyLabel.text = "Hobby:"
        hobbyLabel.font = UIFont.systemFont(ofSize: 18)
        
        hobbyStackView.addArrangedSubview(hobbyLabel)
    }
    
    private func setupHobbyAnswerLabel() {
        hobbyAnswerLabel.text = "Playing football"
        hobbyAnswerLabel.font = UIFont.systemFont(ofSize: 18)
        
        hobbyStackView.addArrangedSubview(hobbyAnswerLabel)
    }
}
