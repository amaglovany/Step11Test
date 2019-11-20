//
//  StepAPI.m
//  Step11
//
//  Created by admin on 19.11.2019.
//  Copyright © 2019 com.test. All rights reserved.
//

#import "StepAPI.h"

@implementation StepAPI

+ (StepAPI *)instance {
    static dispatch_once_t singletonPredicate;
    static StepAPI *singleton = nil;

    dispatch_once(&singletonPredicate, ^{
        singleton = [[super allocWithZone:nil] init];
    });

    return singleton;
}

+ (NSString *)serviceAPIBaseURL {
    return @"https://uinames.com/api/";
}

@end
