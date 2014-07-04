//
//  ShelfTableViewController.swift
//  CodingChallengePart2
//
//  Created by Michael Tirenin on 6/22/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

import UIKit

class ShelfTableViewController: UITableViewController {

    var shelves = Shelf[]()

    override func viewDidLoad() {
        
        super.viewDidLoad()
        navigationItem.title = "Shelves"
    }
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
    }

    // #pragma mark - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView?) -> Int {

        return 1
    }

    override func tableView(tableView: UITableView?, numberOfRowsInSection section: Int) -> Int {
        
        return shelves.count
    }

    override func tableView(tableView: UITableView?, cellForRowAtIndexPath indexPath: NSIndexPath?) -> UITableViewCell! {
        
        let cell: UITableViewCell = tableView!.dequeueReusableCellWithIdentifier("ShelfCell", forIndexPath: indexPath) as UITableViewCell
        
        let cellShelf = shelves[indexPath!.row]
        cell.text = cellShelf.shelfName
        
        return cell
    }
        
    // #pragma mark - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
            segue.identifier == "BookSegue"
            let bookVC = segue.destinationViewController as BookTableViewController
            var indexPath = tableView.indexPathForSelectedRow()
            var shelf:Shelf = shelves[indexPath.row]
            bookVC.books = shelf.books
    }
}
