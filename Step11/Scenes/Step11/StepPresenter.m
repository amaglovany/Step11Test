//
//  StepPresenter.m
//  Step11
//
//  Created by admin on 19.11.2019.
//  Copyright © 2019 com.test. All rights reserved.
//

#import "StepPresenter.h"

@interface StepPresenter ()

@property (strong, nonatomic) NSArray<Person *> *persons;

@end

@implementation StepPresenter

- (instancetype)init
{
    self = [super init];
    if (self) {
         __weak __typeof(self)weakSelf = self;
        [Persons retrieveAllPersonsWithCallback:^(id result, NSError *error) {
            __strong __typeof(weakSelf)strongSelf = weakSelf;
            if ([result isKindOfClass:[Persons class]]) {
                Persons *prsns = result;
                [strongSelf.stepViewDelegate displayPersons:prsns.persons];
            }
            
        }];
    }
    return self;
}

@end
