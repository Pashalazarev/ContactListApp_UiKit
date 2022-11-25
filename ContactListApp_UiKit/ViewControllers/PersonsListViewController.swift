//
//  PersonsListViewController.swift
//  ContactListApp_UiKit
//
//  Created by Pavel Lazarev Macbook on 22.11.2022.
//

import UIKit

class PersonsListViewController: UITableViewController {
    // MARK: - Private properties
    
   private let persons = Person.getFullPerson()

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        persons.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailInfo", for: indexPath)
        
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailInfoVC = segue.destination as? DetailInfoViewController else { return }
        guard let index = tableView.indexPathForSelectedRow else { return }
        let person = persons[index.row]
        detailInfoVC.personData = person
        }
        
    }
    
    
