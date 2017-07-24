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
        cell?.delegate = self
        
        return cell ?? UITableViewCell()
    }
    
}

// MARK: - SettingTableViewCell Delegate

extension SettingsTableViewController: SettingTableViewCellDelegate {
    
    func settingValueChanged(_ cell: SettingTableViewCell, selected: Bool) {
        // Change isSet on setting
        // Which setting to change?
        guard let cellIndexPath = tableView.indexPath(for: cell) else { return }
        let setting = SettingsController.shared.setting(at: cellIndexPath)
        tableView.beginUpdates()
        setting.isSet = selected
        tableView.reloadRows(at: [cellIndexPath], with: .automatic)
        tableView.endUpdates()
        
    }
    
}
