//
//  MenuItems.swift
//  Thinify
//
//  Created by Brian Whaley on 7/5/16.
//  Copyright © 2016 PixelatedViews. All rights reserved.
//

import UIKit

class MenuItem {
    let name: String
    let viewName: String
    let segueName: String
    let iconName: String
    
    // designated initializer for a Menu Item
    init(name: String, viewName: String, segueName: String, iconName: String) {
        self.name = name
        self.viewName = viewName
        self.segueName = segueName
        self.iconName = iconName
    }
    
}
