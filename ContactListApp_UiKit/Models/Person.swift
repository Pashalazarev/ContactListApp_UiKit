//
//  Person.swift
//  ContactListApp_UiKit
//
//  Created by Pavel Lazarev Macbook on 22.11.2022.
//
import Foundation


struct Person {
    let name: String
    let surname: String
    let email: String
    let mobileNumber: String
    
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    
}

extension Person {
    
    static func getFullPerson() -> [Person] {
        var persons: [Person] = []
        let dataManager = DataManager.shared
        
        let names = dataManager.names.shuffled()
        let surnames = dataManager.surnames.shuffled()
        let emails = dataManager.emails.shuffled()
        let mobileNumbers = dataManager.mobileNumbers.shuffled()
        
        for index in 0..<names.count {
            let person = Person(name: names[index],
                                surname: surnames[index],
                                email: emails[index],
                                mobileNumber: mobileNumbers[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
    
    
}




