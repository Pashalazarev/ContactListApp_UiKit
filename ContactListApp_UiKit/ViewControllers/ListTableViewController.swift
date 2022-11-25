//
//  ListTableViewController.swift
//  ContactListApp_UiKit
//
//  Created by Pavel Lazarev Macbook on 23.11.2022.
//

import UIKit

class ListTableViewController: UITableViewController {
   
     let persons = Person.getFullPerson()
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int { 
       
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        2
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "list", for: indexPath)
        
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
    switch indexPath.row {
    case 0:
        content.text = person.email
        content.image = UIImage(systemName: "mail.fill")
    default:
        content.text = person.mobileNumber
        content.image = UIImage(systemName: "phone.fill")
    }
        
        cell.contentConfiguration = content
        

        return cell
    }

// MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }


}
