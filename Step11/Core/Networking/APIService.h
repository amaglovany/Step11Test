//
//  APIService.h
//  Step11
//
//  Created by admin on 19.11.2019.
//  Copyright © 2019 com.test. All rights reserved.
//

#import "BaseService.h"

extern NSString *const kAPIErrorDomain;
extern NSInteger const kServerErrorCode;
extern NSInteger const kInvalidDataErrorCode;

@interface APIService : BaseService

+ (APIService *)instance;

@end
