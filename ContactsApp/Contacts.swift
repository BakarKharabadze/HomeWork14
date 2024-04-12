//
//  Contacts.swift
//  ContactsApp
//
//  Created by Bakar Kharabadze on 4/12/24.
//

import Foundation
import UIKit

struct Person {
    var gender: String
    var name: String
    var lastName: String
    var age: Int
    var hobby: String
}

let persons: [Person] = [
    Person(gender: "Male", name: "Nodar", lastName: "Ghachava", age: 30, hobby: "Fishing"),
    Person(gender: "Female", name: "Elene", lastName: "Donadze", age: 25, hobby: "Painting"),
    Person(gender: "Male", name: "Temuri", lastName: "Chitashvili", age: 35, hobby: "Reading"),
    Person(gender: "Female", name: "Irina", lastName: "Datoshvili", age: 28, hobby: "Singing"),
    Person(gender: "Male", name: "Tornike", lastName: "Elqanashvili", age: 22, hobby: "Gaming"),
    Person(gender: "Female", name: "Ana", lastName: "Ioramashvili", age: 30, hobby: "Cooking"),
    Person(gender: "Female", name: "Nini", lastName: "Bardavelidze", age: 29, hobby: "Dancing"),
    Person(gender: "Female", name: "Barbare", lastName: "Tepnadze", age: 26, hobby: "Swimming"),
    Person(gender: "Female", name: "Mariam", lastName: "Sreseli", age: 27, hobby: "Traveling"),
    Person(gender: "Male", name: "Valeri", lastName: "Mekhashishvili", age: 32, hobby: "Playing guitar"),
    Person(gender: "Male", name: "Zuka", lastName: "Papuashvili", age: 24, hobby: "Drawing"),
    Person(gender: "Female", name: "Nutsa", lastName: "Beriashvili", age: 31, hobby: "Photography"),
    Person(gender: "Male", name: "Luka", lastName: "Kharatishvili", age: 23, hobby: "Writing"),
    Person(gender: "Male", name: "Data", lastName: "Robakidze", age: 34, hobby: "Cycling"),
    Person(gender: "Male", name: "Nika", lastName: "Kakhniashvili", age: 33, hobby: "Playing piano"),
    Person(gender: "Male", name: "Sandro", lastName: "Gelashvili", age: 28, hobby: "Playing chess"),
    Person(gender: "Female", name: "Ana", lastName: "Namgaladze", age: 26, hobby: "Watching movies"),
    Person(gender: "Male", name: "Bakar", lastName: "Kharabadze", age: 23, hobby: "Playing football"),
    Person(gender: "Male", name: "Archil", lastName: "Menabde", age: 29, hobby: "Running"),
    Person(gender: "Female", name: "Tamuna", lastName: "Kakhidze", age: 27, hobby: "Gardening"),
    Person(gender: "Male", name: "Giorgi", lastName: "Michitashvili", age: 31, hobby: "Bird watching"),
    Person(gender: "Female", name: "Salome", lastName: "Topuria", age: 30, hobby: "Yoga"),
    Person(gender: "Male", name: "Luka", lastName: "Gujejiani", age: 28, hobby: "Meditation"),
    Person(gender: "Male", name: "Gega", lastName: "Tatulishvili", age: 32, hobby: "Playing drums"),
    Person(gender: "Female", name: "Raisa", lastName: "Badalova", age: 29, hobby: "Skiing"),
    Person(gender: "Male", name: "Aleksandre", lastName: "Saroiani", age: 33, hobby: "Surfing"),
    Person(gender: "Male", name: "Begi", lastName: "Kopaliani", age: 30, hobby: "Playing volleyball"),
    Person(gender: "Male", name: "Akaki", lastName: "Titberidze", age: 31, hobby: "Fencing"),
    Person(gender: "Male", name: "Sandro", lastName: "Kupatadze", age: 27, hobby: "Woodworking"),
    Person(gender: "Female", name: "Gvantsa", lastName: "Gvagvalia", age: 28, hobby: "Paintball"),
    Person(gender: "Male", name: "Vano", lastName: "Kvakhadze", age: 34, hobby: "Playing basketball")
]

struct Group {
    var title: String
    var persons: [Person]
}


extension UIColor {
    convenience init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt64()
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }
}
