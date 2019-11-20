//
//  Persons.h
//  Step11
//
//  Created by admin on 19.11.2019.
//  Copyright © 2019 com.test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ServiceInvocation.h"

NS_ASSUME_NONNULL_BEGIN

@interface Persons : ServiceInvocation

@property (copy,nonatomic) NSArray *persons;

+ (void) retrieveAllPersonsWithCallback:(ServiceCallback)callback;

@end

NS_ASSUME_NONNULL_END
