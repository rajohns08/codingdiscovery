//
//  UITextFieldTestingTests.swift
//  UITextFieldTestingTests
//
//  Created by Adam Johns on 4/18/15.
//  Copyright (c) 2015 Adam Johns. All rights reserved.
//

import UIKit
import XCTest

class UITextFieldTestingTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testTextFieldLimit() {
        // Set up view before interacting with the text field
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle(forClass: self.dynamicType))
        let vc = storyboard.instantiateViewControllerWithIdentifier("ViewController") as! ViewController
        vc.loadView()
        
        // Test maximum number of allowable characters
        let atTheLimitString = String(count: maxNumCharacters, repeatedValue: Character("a"))
        let atTheLimitResult = vc.textField(vc.textField, shouldChangeCharactersInRange: NSRange(location: 0, length: 0), replacementString: atTheLimitString)
        XCTAssertTrue(atTheLimitResult, "The text field should allow \(maxNumCharacters) characters")
        
        // Test one more than the maximum number of allowable characters
        let overTheLimitString = String(count: maxNumCharacters+1, repeatedValue: Character("a"))
        let overTheLimitResult = vc.textField(vc.textField, shouldChangeCharactersInRange: NSRange(location: 0, length: 0), replacementString: overTheLimitString)
        XCTAssertFalse(overTheLimitResult, "The text field should not allow \(maxNumCharacters+1) characters")
    }
    
}
