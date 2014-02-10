//
//  EmployeeProtocol.h
//  AppDemo
//
//  Created by Paolo on 10/02/14.
//  Copyright (c) 2014 Paolo. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol EmployeeProtocol <NSObject>

-(float) getSalary;

-(float) getSalaryForMounths: (int) mounths;

-(NSString*) getIdentificationInfo;

@end
