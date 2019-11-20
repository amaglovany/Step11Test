//
//  StepPresenter.h
//  Step11
//
//  Created by admin on 19.11.2019.
//  Copyright © 2019 com.test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Persons.h"
#import "Person.h"

@protocol StepViewDelegate <NSObject>

- (void) displayPersons:(NSArray<Person *> *) persons;

@end

@interface StepPresenter : NSObject

@property (weak, nonatomic) id<StepViewDelegate> stepViewDelegate;

@end

