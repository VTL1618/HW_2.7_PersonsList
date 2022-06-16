//
//  PersonDetailsViewController.swift
//  HW_2.7_PersonsList
//
//  Created by Vitaly Zubenko on 11.06.2022.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        
        phoneLabel.text = "Phone: \(person.phoneNumber)"
        emailLabel.text = "Email: \(person.email)"
    }
}
