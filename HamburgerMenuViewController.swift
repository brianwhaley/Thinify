//
//  HamburgerMenuViewController.swift
//  Thinify
//
//  Created by Brian Whaley on 7/4/16.
//  Copyright © 2016 PixelatedViews. All rights reserved.
//

import UIKit

class HamburgerMenuViewController: UITableViewController {
        
    override func loadView() {
        view = LMViewBuilder.viewWithName("ColorPickerView", owner: self, root: nil)
        view = 
    }
    
    override func viewWillAppear(animated: Bool) {
        tableView.layoutIfNeeded()
        preferredContentSize = tableView.contentSize
    }
}

