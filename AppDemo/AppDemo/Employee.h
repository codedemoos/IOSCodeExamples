//
//  Employee.h
//  AppDemo
//
//  Created by Paolo on 10/02/14.
//  Copyright (c) 2014 Paolo. All rights reserved.
//

#import "Person.h"


#import "EmployeeProtocol.h"


@interface Employee : Person <EmployeeProtocol>

@property (readwrite, nonatomic, assign) float salary;

@end
