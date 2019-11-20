//
//  Person.m
//  Step11
//
//  Created by admin on 19.11.2019.
//  Copyright © 2019 com.test. All rights reserved.
//

#import "Person.h"

@implementation Person

+ (id) objectFromJSON:(id)json {
    Person *person = nil;
    if ([json isKindOfClass:[NSDictionary class]]) {
        person = [[Person alloc] init];
        person.name = [json objectForKey:@"name"];
        person.surname = [json objectForKey:@"surname"];
        person.age = [json objectForKey:@"age"];
    }
    return person;
}

@end
