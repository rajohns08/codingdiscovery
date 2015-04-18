//
//  ViewController.swift
//  UITextFieldTesting
//
//  Created by Adam Johns on 4/18/15.
//  Copyright (c) 2015 Adam Johns. All rights reserved.
//

import UIKit

let maxNumCharacters = 5

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: UITextFieldDelegate {
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        let newLength = count(textField.text) + count(string) - range.length
        return newLength <= maxNumCharacters
    }
}
