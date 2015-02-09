//
//  ViewController.m
//  GettingStartedWithKIF
//
//  Created by Adam Johns on 1/31/15.
//  Copyright (c) 2015 Adam Johns. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic) int count;
@property (weak, nonatomic) IBOutlet UILabel *countLabel;
- (IBAction)addTapped:(id)sender;
- (IBAction)subtractTapped:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)addTapped:(id)sender {
    self.count++;
    [self updateCountLabel];
}

- (IBAction)subtractTapped:(id)sender {
    self.count--;
    [self updateCountLabel];
}

- (void)updateCountLabel {
    self.countLabel.text = [NSString stringWithFormat:@"%d", self.count];
}

@end
