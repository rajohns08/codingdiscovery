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
    
    func tableView(tableView: UITableView,
        cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            
        var cell = tableView.dequeueReusableCellWithIdentifier("MyCell") as MyCustomTableViewCell

        cell.leftLabel.text = "I'm a cell"
        
        if indexPath.row < 20 {
            cell.rightLabel.text = "< 20"
        }
        else {
            cell.rightLabel.text = ""
        }
        
        return cell
    }
}

