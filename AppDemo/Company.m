//
//  Company.m
//  AppDemo
//
//  Created by Paolo on 10/02/14.
//  Copyright (c) 2014 Paolo. All rights reserved.
//

#import "Company.h"

@implementation Company


-(id)init{


    self.employeeMutableArray = [[NSMutableArray alloc] init];
    
    return self;
}

-(void) addEmployee: (Employee*) employee{

    
    [self.employeeMutableArray addObject:employee];
    
    NSLog(@"Company added: %@ ", employee);

}

-(void) removeEmployee: (Employee*) employee{
    
    
    [self.employeeMutableArray removeObject:employee];
    
      NSLog(@"Company removed: %@ ", employee);
}

-(void) printEmployees{
    
    
    NSLog(@"Company emloyees: %@,",self.employeeMutableArray);
}



@end
