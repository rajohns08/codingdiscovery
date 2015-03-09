//
//  MyCustomTableViewCell.swift
//  TableCellReuse
//
//  Created by Adam Johns on 3/8/15.
//  Copyright (c) 2015 Adam Johns. All rights reserved.
//

import UIKit

class MyCustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var leftLabel: UILabel!
    @IBOutlet weak var rightLabel: UILabel!
    
    // MARK: Overrides
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
        self.leftLabel.text = ""
        self.rightLabel.text = ""
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        // Default state of a cell
        self.leftLabel.text = ""
        self.rightLabel.text = ""
    }
    
    // MARK: Custom Methods
    
    func setData(row: Int) {
        self.leftLabel.text = "I'm a cell"
        
        if row < 20 {
            self.rightLabel.text = "< 20"
        }
    }

}
