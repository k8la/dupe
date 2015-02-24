//
//  ResultsTableViewController.swift
//  Dupe'd
//
//  Created by Kaitlyn on 2/23/15.
//  Copyright (c) 2015 K8La. All rights reserved.
//

import UIKit

class ResultsTableViewController: UITableViewController, UISearchBarDelegate, UISearchDisplayDelegate {
    
    
    var dupes = [Dupe]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.None
        
        self.dupes = [Dupe(type:"Lipstick", name:"Orgasm", brand:"NARS"),
            Dupe(type:"Lipstick", name:"Mysterious Red", brand: "NARS"),
            Dupe(type:"Lipstick", name:"Audacious Pink", brand: "Revlon"),
            Dupe(type:"Eyeliner", name:"Pencil Perfect", brand: "Loreal"),
            Dupe(type:"Eyeliner", name:"Glimmersticks", brand: "Avon"),
            Dupe(type:"Blush", name:"Deep Throat", brand: "NARS"),
            Dupe(type:"Foundation", name:"Perfect Cover B.B. Cream", brand: "Missha"),
            Dupe(type:"Foundation", name:"Sand", brand: "Neutrogena"),
            Dupe(type:"Other", name:"Tweezer", brand: "Tweezerman")]
        
        // Reload the table
        self.tableView.reloadData()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
//                self.hideSearchBar()
    }
    
    // MARK:- Util methods
    
//        func hideSearchBar() {
//            let yOffset = self.navigationController!.navigationBar.bounds.height + UIApplication.sharedApplication().statusBarFrame.height
//            self.tableView.contentOffset = CGPointMake(0, self.searchController!.searchBar.bounds.height - yOffset)
//        }
//    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return self.dupes.count
    }
    
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //ask for a reusable cell from the tableview, the tableview will create a new one if it doesn't have any
        let cell = self.tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! PrototypeTableViewCell

        
        let dupe = self.dupes[indexPath.row]
        // Configure the cell
        
        cell.brand.text = dupe.brand
        cell.name.text = dupe.name
        cell.type.text = dupe.type
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        return cell
    }


}
