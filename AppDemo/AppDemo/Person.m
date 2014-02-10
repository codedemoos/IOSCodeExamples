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
   
    self._id = [Person generateID];
    
    return self;
}


+ (int) generateID
{
    @synchronized (self)
    {
        class_id++;
    }
    return class_id;
}

+ (float) maximumHeightInCentimeters{
    
    return 250.0f;
}
+ (double) minimumHeightInCentimeters{
    
    return 40.0;
    
}

@end
