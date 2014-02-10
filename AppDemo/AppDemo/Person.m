//
//  Person.m
//  AppDemo
//
//  Created by Paolo on 09/02/14.
//  Copyright (c) 2014 Paolo. All rights reserved.
//

#import "Person.h"

@implementation Person 


static unsigned int class_id = -1;


- (id)init {
   
    self._id = [self generateID];
    
    return self;
}

//IMPLEMENT PERSON PROTOCOL REQUIRED METHODS
- (NSString*)getFirstName{
    return self.firstName;
}

- (NSString*)getLastName{
    return self.lastName;
}


- (int) generateID
{
    @synchronized (self)
    {
        class_id++;
    }
    return class_id;
}


//STATIC COMMON PUBLICS METHODS

+ (float) maximumHeightInCentimeters{
    
    return 250.0f;
}
+ (double) minimumHeightInCentimeters{
    
    return 40.0;
    
}

@end
