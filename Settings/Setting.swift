//
//  Setting.swift
//  Settings
//
//  Created by Caleb Strong on 7/24/17.
//  Copyright © 2017 Caleb Strong. All rights reserved.
//

import UIKit

class Setting {
    
    // MARK - Internal properties
    
    let name: String
    let image: UIImage?
    let isSet: Bool
    
    // MARK - Initializers
    
    init(name: String, image: UIImage?, isSet: Bool) {
        self.name = name
        self.image = image
        self.isSet = isSet
    }
    
}
