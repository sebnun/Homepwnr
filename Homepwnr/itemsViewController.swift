//
//  itemsViewController.swift
//  Homepwnr
//
//  Created by Sebastian on 3/4/16.
//  Copyright © 2016 Sebastian. All rights reserved.
//

import UIKit

class ItemsViewController: UITableViewController {
    
    var itemsStore: ItemStore!
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsStore.allItems.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCellWithIdentifier("UITableViewCell")!
        
        let item = itemsStore.allItems[indexPath.row]
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = "$\(item.valueInDollars)"
        
        return cell
    }
    
    override func viewDidLoad() {
        
        //to avoid content over the status bar
        let statusBarHeight = UIApplication.sharedApplication().statusBarFrame.height
        let insets = UIEdgeInsets(top: statusBarHeight, left: 0, bottom: 0, right: 0)
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets
        
    }
}
