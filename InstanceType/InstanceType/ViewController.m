//
//  ViewController.m
//  InstanceType
//
//  Created by Adam Johns on 11/21/14.
//  Copyright (c) 2014 Adam Johns. All rights reserved.
//

#import "ViewController.h"
#import "Animal.h"
#import "Dog.h"

@interface ViewController ()

@end

@implementation ViewController

// Illustrate why it is best to return instancetype from methods
// that return an instance of the class they were called on
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Shows no warning that count can't be called on Animal...Bad
    [[Animal giveMeAnimalA] count];
    
    // Warns us that count can't be called on Animal...Good
    [[Animal giveMeAnimalB] count];
    
    // Doesn't give us a subclass instance when we wanted one...Bad
    [[Dog giveMeAnimalC] makeSound];
}

@end
