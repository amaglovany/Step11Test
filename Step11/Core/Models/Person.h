//
//  Person.h
//  Step11
//
//  Created by admin on 19.11.2019.
//  Copyright © 2019 com.test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ServiceInvocation.h"

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    kMale,
    kFemale,
    kOther
} GenderType;

@interface Person : ServiceInvocation

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *surname;
@property (nonatomic, strong) NSNumber *age;

@end

NS_ASSUME_NONNULL_END
