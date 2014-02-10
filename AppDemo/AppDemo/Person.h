//
//  Person.h
//  AppDemo
//
//  Created by Paolo on 09/02/14.
//  Copyright (c) 2014 Paolo. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PersonProtocol.h"
/*
 strong
 Properties of this type will be retained by the runtime. These can only be instances of classes. In other words, you cannot retain a value into a property of type strong if the value is a primitive. You can retain objects, but not primitives.
 copy
 The same as strong, but when you assign to properties of this type, the runtime will make a copy of the object on the right side of the assignment. The object on the righthand side of the assignment must conform to the NSCopying or NSMutable Copying protocol.
 assign
 Objects or primitive values that are set as the value of a property of type assign will not be copied or retained by that property. For primitive properties, this qualifier will create a memory address where you can put the primitive data. For objects, properties of this type will simply point to the object on the righthand side of the equation.
 unsafe_unretained
 The same as the assign qualifier.
 weak
 The same as the assign qualifier with one big difference. In the case of objects, when the object that is assigned to a property of this type is released from memory, the runtime will automatically set the value of this property to nil.
 */

/*
 strong vs weak
 
 strong is the default. An object remains “alive” as long as there is a strong pointer to it.
 
 weak specifies a reference that does not keep the referenced object alive. A weak reference is set to nil when there are no strong references to the object.
 */



@interface Person : NSObject <PersonProtocol>



@property (nonatomic, assign) int _id;

@property (nonatomic, copy) NSString *firstName;

@property (nonatomic, copy) NSString *lastName;

@property (nonatomic, assign) float currentHeight;

@property (nonatomic, assign) double currentWeigth;


//STATICS METHODS

+ (float) maximumHeightInCentimeters;

+ (double) minimumHeightInCentimeters;


@end
