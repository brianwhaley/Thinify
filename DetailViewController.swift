//
//  DetailViewController.swift
//  Thinify
//
//  Created by Brian Whaley on 7/5/16.
//  Copyright © 2016 PixelatedViews. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var menuitem: MenuItem! {
        didSet (newItem) {
            self.refreshUI()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem()
        navigationItem.leftItemsSupplementBackButton = true
        
        refreshUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func refreshUI() {
        /* 
        nameLabel?.text = monster.name
        descriptionLabel?.text = monster.description
        iconImageView?.image = UIImage(named: monster.iconName)
        weaponImageView?.image = monster.weaponImage()
        */

    }

}

extension DetailViewController: MenuItemSelectionDelegate {
    func menuItemSelected(newItem: MenuItem) {
        menuitem = newItem
    }
}