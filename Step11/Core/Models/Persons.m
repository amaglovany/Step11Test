//
//  Persons.m
//  Step11
//
//  Created by admin on 19.11.2019.
//  Copyright © 2019 com.test. All rights reserved.
//

#import "Persons.h"
#import "Person.h"

@implementation Persons

+(id)objectFromJSON:(id)json {
    Persons *persons = nil;
    if([json isKindOfClass:[NSArray class]]){
        persons = [[Persons alloc] init];
        NSMutableArray *prsns = [[NSMutableArray alloc] init];
        for (id personJson in json){
            Person *person = [Person objectFromJSON:personJson];
            [prsns addObject:person];
        }
        persons.persons = prsns;
    }
    return  persons;
}


+ (void)  retrieveAllPersonsWithCallback:(ServiceCallback)callback {
    NSString *url = [self.class buildURLWithServiceName:@"" URL:@""];
    
    NSMutableDictionary *headers = [[NSMutableDictionary alloc] init];
    
    QueryParameter *amount = [[QueryParameter alloc] initWithKey:@"amount" value:@"3"];
    QueryParameter *ext = [[QueryParameter alloc] initWithKey:@"ext" value:@""];
    NSArray *queries = @[amount, ext];
    
    [self.class invokeWithRequestMethod:RequestMethodGet URL:url queryParameters:queries bodyPayload:nil additionalHeaders:headers callback:callback resultClass:[Persons class]];
}

@end
