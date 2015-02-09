//
//  Dog.h
//  InstanceType
//
//  Created by Adam Johns on 11/21/14.
//  Copyright (c) 2014 Adam Johns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject

+ (id)giveMeAnimalA;
+ (instancetype)giveMeAnimalB;
+ (Animal *)giveMeAnimalC;

@end
