//
//  BookTableViewController.swift
//  CodingChallengePart2
//
//  Created by Michael Tirenin on 6/22/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

import UIKit

class BookTableViewController: UITableViewController {

    var books = [Book]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        navigationItem.title = "Books"
    }
            
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
    }

    // #pragma mark - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView?) -> Int {

        return 1
    }

    override func tableView(tableView: UITableView?, numberOfRowsInSection section: Int) -> Int {
        
        return books.count
    }
    
    override func tableView(tableView: UITableView?, cellForRowAtIndexPath indexPath: NSIndexPath?) -> UITableViewCell! {
        
        let cell: UITableViewCell = tableView!.dequeueReusableCellWithIdentifier("BookCell", forIndexPath: indexPath) as UITableViewCell
        
        let cellBook = books[indexPath!.row]
//        cell.text = cellBook.bookTitle
        cell.textLabel.text = cellBook.bookTitle

        return cell
    }
}
