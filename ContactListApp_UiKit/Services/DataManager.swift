//
//  DataManager.swift
//  ContactListApp_UiKit
//
//  Created by Pavel Lazarev Macbook on 22.11.2022.
//

class DataManager {
    
    static let shared = DataManager()
    
    let names = [
        "John","Sharon","Aaron",
        "Steven","Nicola","Ted",
        "Bruce","Carl","Smith"
    ]
    
    let surnames = [
        "Murphy","Jankin","Williams",
        "Black","Robertson","Butler",
        "Isaacson","Smith","Pennyworth"
    ]
    
    let emails = [
        "qwe@gmail.com","asd@gmail.com","edr@gmail.com",
        "kee@gmail.com","vld@gmail.com","elw@gmail.com",
        "dew@gmail.com","bvg@gmail.com","vkt@gmail.com"
    ]
    
    let mobileNumbers = [
        "+7947275485","+7957476234","+7067395721",
        "+7836573645","+7926573642","+7563758321",
        "+7957335637","+7592758452","+75837630123"
    ]
    
    private init() {}
}




