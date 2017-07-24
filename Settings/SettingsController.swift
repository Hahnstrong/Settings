//
//  SettingsController.swift
//  Settings
//
//  Created by Caleb Strong on 7/24/17.
//  Copyright © 2017 Caleb Strong. All rights reserved.
//

import UIKit

class SettingsController {
    
    // MARK: - Internal Properties
    
    let mySettings: [Setting]
    
    // MARK: - Initializers
    
    init() {
        let music = Setting(name: "Music", image: UIImage(named: "itunes"), isSet: false)
        let apps = Setting(name: "Apps", image: UIImage(named: "app"), isSet: true)
        let books = Setting(name: "Books", image: UIImage(named: "ibooks"), isSet: false)
        let updates = Setting(name: "Updates", image: UIImage(named: "app"), isSet: false)
        
        mySettings = [music, apps, books, updates]
    }
    
}
