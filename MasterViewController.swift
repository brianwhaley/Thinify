//
//  MasterViewController.swift
//  Thinify
//
//  Created by Brian Whaley on 7/5/16.
//  Copyright © 2016 PixelatedViews. All rights reserved.
//

// https://www.raywenderlich.com/94443/uisplitviewcontroller-tutorial-getting-started

import UIKit

protocol MenuItemSelectionDelegate: class {
    func menuItemSelected(newTarget: MenuItem)
}

class MasterViewController: UITableViewController {
    
    weak var delegate: MenuItemSelectionDelegate?
    
    var menuitems = [MenuItem]()
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.menuitems.append(MenuItem(name: "Home", viewName: "Home", segueName: "showHomeVC", iconName: ""))
        self.menuitems.append(MenuItem(name: "About", viewName: "About", segueName: "showAboutVC", iconName: ""))
        self.menuitems.append(MenuItem(name: "Logout", viewName: "Logout", segueName: "showHomeVC", iconName: ""))
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return self.menuitems.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) 
        let menuitem = self.menuitems[indexPath.row]
        cell.textLabel?.text = menuitem.name
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let selectedItem = self.menuitems[indexPath.row]
        self.delegate?.menuItemSelected(selectedItem)
        
        let rightNavController = splitViewController!.viewControllers.last as! UINavigationController
        rightNavController.performSegueWithIdentifier(selectedItem.segueName, sender: self)

    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
