//
//  Employee.m
//  AppDemo
//
//  Created by Paolo on 10/02/14.
//  Copyright (c) 2014 Paolo. All rights reserved.
//

#import "Employee.h"

@implementation Employee


-(float) getSalary{

    return self.salary;
}

-(float) getSalaryForMounths:(int)mounths{
    
    return self.salary * mounths;
    
}

-(NSString*) getIdentificationInfo{


    NSString* identicationInfo;
    
    identicationInfo = [NSString stringWithFormat:@"Employee: %d_%@_%@",  super._id, super.getFirstName,  super.getLastName];
    
    return  identicationInfo;
}

@end
