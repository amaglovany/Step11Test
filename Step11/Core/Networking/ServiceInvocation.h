//
//  ServiceInvocation.h
//  Step11
//
//  Created by admin on 19.11.2019.
//  Copyright © 2019 com.test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "APIService.h"

extern NSString *const kCharset;

typedef enum {
    RequestMethodGet,
    RequestMethodPut,
    RequestMethodPost,
    RequestMethodDelete,
    RequestMethodGetDownload,
    RequestMethodPostDownload
} RequestMethod;

@interface QueryParameter : NSObject

@property (copy, nonatomic) NSString *key;
@property (copy, nonatomic) NSObject<NSCopying> *value;

- (id)initWithKey:(NSString *)key value:(NSObject<NSCopying> *)value;

@end

@interface ServiceInvocation : NSObject

+ (NSString *)createFilterWithFields:(NSArray *)fields;
+ (NSString *)buildURLWithServiceName:(NSString *)serviceName URL:(NSString *)url;
+ (void)invokeWithRequestMethod:(RequestMethod)method URL:(NSString *)url queryParameters:(NSArray *)queryParams
                    bodyPayload:(NSData *)bodyPayload callback:(ServiceCallback)callback resultClass:(Class)cls;
+ (void)invokeWithRequestMethod:(RequestMethod)method URL:(NSString *)url queryParameters:(NSArray *)queryParams
                    bodyPayload:(NSData *)bodyPayload additionalHeaders:(NSDictionary *)additionalHeaders callback:(ServiceCallback)callback resultClass:(Class)cls;
+ (id)objectFromJSON:(id)json;
- (NSDictionary *)objectToDictionary;

@end
