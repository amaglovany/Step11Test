//
//  StepAPI.h
//  Step11
//
//  Created by admin on 19.11.2019.
//  Copyright © 2019 com.test. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StepAPI : NSObject

@property (copy, nonatomic) NSString *serviceAPIBaseURL;

+ (StepAPI *)instance;
+ (NSString *)serviceAPIBaseURL;

@end

