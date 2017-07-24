//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Caleb Strong on 7/24/17.
//  Copyright © 2017 Caleb Strong. All rights reserved.
//

import UIKit

protocol SettingTableViewCellDelegate: class {
    func settingValueChanged(_ cell: SettingTableViewCell, selected: Bool)
}

class SettingTableViewCell: UITableViewCell {

    // MARK: - IBOutlets
    
    // Switch
    @IBOutlet weak var settingSwitch: UISwitch!
    // Image
    @IBOutlet weak var iconImageView: UIImageView!
    // Label
    @IBOutlet weak var settingLabel: UILabel!

    // MARK: - Internal Properties
    
    weak var delegate: SettingTableViewCellDelegate?
    
    // MARK: - Lifecycle
    
    func updateViews(with setting: Setting?) {
        guard let setting = setting else { return }
        // Update the label
        settingLabel.text = setting.name
        // Update our image
        iconImageView.image = setting.image
        // Update the switch
        settingSwitch.isOn = setting.isSet
        // Uodate the bg color
        backgroundColor = setting.isSet ? .yellow : .white
    }
    
    // MARK: - Internal Method
    
    @IBAction func settingSwitchValueChanged() {
        // When the value changes, we want to update the cell.
        // We need to actually update the setting as well.
        delegate?.settingValueChanged(self, selected: settingSwitch.isOn)
        
    }
    
}
