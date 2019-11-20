//
//  BaseService.h
//  Step11
//
//  Created by admin on 19.11.2019.
//  Copyright © 2019 com.test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

extern NSString *const kHTTPGetMethod;
extern NSString *const kHTTPPostMethod;
extern NSString *const kHTTPPutMethod;
extern NSString *const kHTTPDeleteMethod;


typedef enum {
    RequestTypeData,
    RequestTypeDownload,
    RequestTypeUpload,
} RequestType;

typedef void(^ServiceCallback)(id result, NSError *error);

@interface BaseService : NSObject

@property (copy, nonatomic) NSURL *url;
@property (copy, nonatomic) NSString *requestMethod;
@property (assign, nonatomic) RequestType requestType;
@property (copy, nonatomic) NSData *bodyData;
@property (copy, nonatomic) NSDictionary *headers;
@property (assign, nonatomic) NSTimeInterval requestTimeout;
@property (assign, nonatomic) NSURLRequestCachePolicy cachePolicy;

+ (NSDictionary *)debugHeaders;

- (void)invokeWithCallback:(ServiceCallback)callback;

- (void)requestFinishedWithResponseStatusCode:(NSInteger)statusCode result:(id)result error:(NSError *)error;

@end
