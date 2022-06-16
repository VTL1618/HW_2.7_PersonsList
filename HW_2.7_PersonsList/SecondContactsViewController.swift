//
//  SecondContactsViewController.swift
//  HW_2.7_PersonsList
//
//  Created by Vitaly Zubenko on 10.06.2022.
//

import UIKit

class SecondContactsViewController: UITableViewController {

    var personsList: [Person] = []
    
    // заголовок для секции
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personsList[section].fullName
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        personsList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let person = personsList[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = person.phoneNumber
            content.image = UIImage(systemName: "phone")
            // лучше данные писать в модели (Person). Тоесть создать enum и для названий иконок
        default:
            content.text = person.email
            content.image = UIImage(systemName: "tray")
        }
        
        cell.contentConfiguration = content
        
        return cell
    }

}
