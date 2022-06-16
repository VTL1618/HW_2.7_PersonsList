//
//  TabBarViewController.swift
//  HW_2.7_PersonsList
//
//  Created by Vitaly Zubenko on 12.06.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    let persons = Person.getPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupViewControllers(with: persons)
    }
    
    private func setupViewControllers(with persons: [Person]) {
        let contactsVC = viewControllers?.first as! ContactsViewController
        let secondContactsVC = viewControllers?.last as! SecondContactsViewController
        
        contactsVC.personsList = persons
        secondContactsVC.personsList = persons
    }
    // параметр with установлен наверно для четкости и безопасности

}
