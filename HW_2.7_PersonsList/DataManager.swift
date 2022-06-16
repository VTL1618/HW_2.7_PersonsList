//
//  DataManagerViewController.swift
//  HW_2.7_PersonsList
//
//  Created by Vitaly Zubenko on 10.06.2022.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    private init() {}

    var names: [String] = ["Chelentano", "Vitaly", "Nicolas", "Brad", "Angelina", "Leonardo", "Johnny", "Gemma", "Robert"]
    
    var surnames: [String] = ["Vladimirovich", "Jolie", "Pitt", "Cage", "DiCaprio", "Depp", "Chan", "Downey Jr.", "Cruise"]
    
    var emails: [String] = ["bull@gmail.com", "rabit@gmail.com", "dog@gmail.com", "cat@@gmail.com", "wolf@gmail.com", "bison@gmail.com", "buffalo@gmail.com", "lizard@gmail.com", "cow@gmail.com"]
    
    var phoneNumbers: [String] = ["+380 (95) 777 11 22", "+380 (99) 123 22 33", "+380 (63) 111 22 33", "+380 (67) 222 33 44", "+380 (97) 555 66 77", "+380 (98) 888 99 00", "+380 (77) 111 22 33", "+380 (78) 222 33 44", "+380 (66) 555 44 33"]
    
}
