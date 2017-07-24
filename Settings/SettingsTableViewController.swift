//
//  SettingsTableViewController.swift
//  Settings
//
//  Created by Caleb Strong on 7/24/17.
//  Copyright © 2017 Caleb Strong. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController {
    
    // MARK: - Tableview DataSource

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingsController.shared.numberOfSettings
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create an instance of the cell, Custom Cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingCell", for: indexPath) as? SettingTableViewCell
        // Find idexPath of what you want to display
        
        // let setting = someSetting
        let setting = SettingsController.shared.setting(at: indexPath)
        cell?.updateViews(with: setting)
        
        
        return cell ?? UITableViewCell()
    }
    
}
