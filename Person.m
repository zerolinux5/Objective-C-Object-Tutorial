//
//  Person.m
//  PeopleDataBase
//
//  Created by Jesus Magana on 6/22/14.
//  Copyright (c) 2014 ZeroLinux5. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)enterInfo {
    NSLog(@"What is the first name?");
    char cstring[40];
    char readAnswer;
    scanf("%s", cstring);
    
    firstName = [NSString stringWithCString:cstring encoding:1];
    
    NSLog(@"What is %@'s last name?",firstName);
    scanf("%s",cstring);
    lastName = [NSString stringWithCString:cstring encoding:1];
    
    NSLog(@"How old is %@ %@?", firstName, lastName);
    scanf("%i", &age);
    
    NSLog(@"Does %@ %@ have a pet?(y/n)", firstName, lastName);
    scanf("\n%c", &readAnswer);
    if(readAnswer == 'y'){
        petResponse = 1;
    } else {
        petResponse = 0;
    }
    
    if (petResponse == 1){
        NSLog(@"What kind of pet is this pet?");
        scanf("%s", cstring);
        
        pet = [NSString stringWithCString:cstring encoding:1];
        
        NSLog(@"What is the name of this %@?",pet);
        scanf("%s", cstring);
        
        petName = [NSString stringWithCString:cstring encoding:1];
    }
    
}

- (void)printInfo {
    NSLog(@"%@ %@ is %i years old", firstName, lastName, age);
    if (petResponse == 1){
        NSLog(@"%@ %@ has a pet %@ named %@.", firstName, lastName, pet, petName);
    }
}

@end
