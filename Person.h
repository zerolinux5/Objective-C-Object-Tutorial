//
//  Person.h
//  PeopleDataBase
//
//  Created by Jesus Magana on 6/22/14.
//  Copyright (c) 2014 ZeroLinux5. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject{
    NSString *firstName;
    NSString *lastName;
    int age;
    
    NSString *pet;
    NSString *petName;
    int petResponse;
}

- (void)enterInfo;
- (void)printInfo;

@end
