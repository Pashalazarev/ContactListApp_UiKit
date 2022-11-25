//
//  ViewController.swift
//  ContactListApp_UiKit
//
//  Created by Pavel Lazarev Macbook on 23.11.2022.
//

import UIKit

class DetailInfoViewController: UIViewController {
    // MARK: - Properties
    
    var personData: Person!
   
    
    // MARK: - IBOutlet
    
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneNumberLabel: UILabel!
    
    
    // MARK: - Ovveride methods
    override func viewDidLoad() {
        super.viewDidLoad()
        title = personData.fullName
        emailLabel.text = "Email: \(personData.email)"
        phoneNumberLabel.text = "Phone number: \(personData.mobileNumber)"
       
    }

}
