//
//  UITests.m
//  UITests
//
//  Created by Adam Johns on 1/31/15.
//  Copyright (c) 2015 Adam Johns. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <KIF/KIF.h>

@interface UITests : KIFTestCase

@end

@implementation UITests

- (void)test001Add {
    [tester tapViewWithAccessibilityLabel:@"Add"];
    [tester tapViewWithAccessibilityLabel:@"Add"];
    [tester tapViewWithAccessibilityLabel:@"Add"];
}

- (void)test002Subtraction {
    [tester tapViewWithAccessibilityLabel:@"Subtract"];
    [tester tapViewWithAccessibilityLabel:@"Subtract"];
    [tester tapViewWithAccessibilityLabel:@"Subtract"];
    [tester waitForTimeInterval:5];
}

@end
