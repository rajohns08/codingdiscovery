//
//  ViewController.m
//  ContainerSwap
//
//  Created by Adam Johns on 3/1/15.
//  Copyright (c) 2015 Adam Johns. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *yellowContainer;
@property (weak, nonatomic) IBOutlet UIView *blueContainer;
- (IBAction)segmentValueChanged:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)segmentValueChanged:(id)sender {
    UISegmentedControl *segment = sender;
    
    switch (segment.selectedSegmentIndex) {
        case 0:
            self.blueContainer.hidden = NO;
            break;
        case 1:
            self.blueContainer.hidden = YES;
            break;
        default:
            break;
    }
}
@end
