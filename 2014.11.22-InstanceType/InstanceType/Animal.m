//
//  Dog.m
//  InstanceType
//
//  Created by Adam Johns on 11/21/14.
//  Copyright (c) 2014 Adam Johns. All rights reserved.
//

#import "Animal.h"

@implementation Animal

+ (id)giveMeAnimalA {
    return [[[self class] alloc] init];
}

+ (instancetype)giveMeAnimalB {
    return [[[self class] alloc] init];
}

+ (Animal *)giveMeAnimalC {
    return [[[self class] alloc] init];
}

@end
