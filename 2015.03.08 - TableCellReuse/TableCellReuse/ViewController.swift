//
//  ViewController.swift
//  TableCellReuse
//
//  Created by Adam Johns on 3/8/15.
//  Copyright (c) 2015 Adam Johns. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 40
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("MyCell") as MyCustomTableViewCell
        cell.setUpCell(indexPath.row)
        return cell
    }
}

