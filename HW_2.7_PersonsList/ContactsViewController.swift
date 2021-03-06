//
//  ViewController.swift
//  HW_2.7_PersonsList
//
//  Created by Vitaly Zubenko on 10.06.2022.
//

import UIKit

class ContactsViewController: UITableViewController {

    var personsList = Person.getPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let person = personsList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
           let personDetailsVC = segue.destination as! PersonDetailsViewController
           personDetailsVC.person = personsList[indexPath.row]
        }
    }

}


