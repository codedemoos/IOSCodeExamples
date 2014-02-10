//
//  Company.h
//  AppDemo
//
//  Created by Paolo on 10/02/14.
//  Copyright (c) 2014 Paolo. All rights reserved.
//

#import <Foundation/Foundation.h>


#import "Employee.h"


@interface Company : NSObject

@property (readwrite, atomic, strong) NSMutableArray *employeeMutableArray;

-(void) addEmployee: (Employee*) employee;

-(void) removeEmployee: (Employee*) employee;

-(void) printEmployees;

@end
