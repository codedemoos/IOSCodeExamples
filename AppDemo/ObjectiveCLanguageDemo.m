//
//  ObjectiveCLanguageDemo.m
//  DemoApp
//
//  Created by Paolo on 25/01/14.
//  Copyright (c) 2014 Paolo. All rights reserved.
//

#import "ObjectiveCLanguageDemo.h"

#import "Person.h"

#import "Employee.h"

@implementation ObjectiveCLanguageDemo


+(void) rundDemoos{

    
     NSLog(@"Demo class person");
     [ObjectiveCLanguageDemo demoClass];
    
     NSLog(@"Demo array");

     [ObjectiveCLanguageDemo demoArray];
    
     NSLog(@"Demo array");

    [ObjectiveCLanguageDemo demoDictionary];
    
     NSLog(@"Demo dictionary");
    
    [ObjectiveCLanguageDemo demoSet];
    
    

}


+(void) demoClass{

    //CREATE THE OBJECT
    Person *p1 = [[Person alloc] init];
    
    //ACCESS TO THE PROPERTIES AND ASSIGN SOME VALUES
    p1.firstName = @"Paolo";
    
    p1.lastName = @"Nappi";
    
    p1.currentHeight= 170;

    NSLog(@"Full name = %@ %@ person id %id",  p1.firstName, p1.lastName, p1._id);
    
    NSLog(@"Current height = %f", p1.currentHeight);
    
    NSLog(@"Current weigth = %f", p1.currentWeigth);
    
    float differenceFromMaxHeight = [Person maximumHeightInCentimeters] - p1.currentHeight;
    
    NSLog(@"Difference max height - current height = %f", differenceFromMaxHeight);

    //CREATE THE OBJECT
    Person *p2 = [[Person alloc] init];
    
    //ACCESS TO THE PROPERTIES AND ASSIGN SOME VALUES
    p2.firstName = @"Mario";
    
    p2.lastName = @"Rossi";
    
    p2.currentHeight= 170;
    
    NSLog(@"Full name = %@ %@ person id %id",  p2.firstName, p2.lastName, p2._id);
    
    
    
     Employee *e1 = [[Employee alloc] init];
    
    e1.firstName = p1.firstName;
    
    e1.lastName = p1.lastName;
    
    
    
    e1.salary = 2003.3;
    
    
    NSLog(@"Employe %@, salary %f " ,  e1.getIdentificationInfo, e1.salary);
}

+(void) demoArray{
    
    NSString *string1 = @"String 1";
    
    NSString *string2 = @"String 2";
    
    NSString *string3 = @"String 3";

    NSArray *immutableArray = @[string1, string2, string3];
    NSMutableArray *mutableArray = [[NSMutableArray alloc]
                                    initWithArray:immutableArray];
    
    
    [mutableArray exchangeObjectAtIndex:0 withObjectAtIndex:1];
    
    [mutableArray removeObjectAtIndex:1];
    
    [mutableArray setObject:string1 atIndexedSubscript:0];

    
    NSLog(@"Immutable array = %@", immutableArray);
    
    NSLog(@"Mutable Array = %@", mutableArray);
}


+(void) demoDictionary{

    NSDictionary *personInformation =
    @{
      @"firstName" : @"Anna",
      @"lastName" : @"Rossi",
      @"age" : @30,
      @"sex" : @"Female"
      };
    
    NSString *firstName = personInformation[@"firstName"];
    NSString *lastName = personInformation[@"lastName"];
    NSNumber *age = personInformation[@"age"];
    NSString *sex = personInformation[@"sex"];
    NSLog(@"Full name = %@ %@", firstName, lastName);
    NSLog(@"Age = %@, Sex = %@", age, sex);
    
    
    /*
     You can also have mutable dictionaries, just as you can have mutable arrays. Mutable dictionaries’ contents can be changed after they are instantiated. */

    NSMutableDictionary *mutablePersonInformation =[[NSMutableDictionary alloc] initWithDictionary:personInformation];
    
    mutablePersonInformation[@"age"] = @32;
    NSLog(@"Information = %@", mutablePersonInformation);
    
}



+(void) demoSet{

    /*
     You can also take advantage of sets. Sets are like arrays but must contain a unique set of objects. You cannot add the same instance of an object twice to the same set*/
    
    NSSet *shoppingList = [[NSSet alloc] initWithObjects:
                           @"Milk",
                           @"Bananas",
                           @"Bread",
                           @"Milk", nil];
    
    NSLog(@"Shopping list = %@", shoppingList);
    
    
  /*
   Note how Milk was mentioned twice in our program but added to the set only once. That’s the magic behind sets. You can also use mutable sets like so:
   */
  
    
    NSMutableSet *mutableList = [NSMutableSet setWithSet:shoppingList];
    [mutableList addObject:@"Yogurt"];
    [mutableList removeObject:@"Bread"];
    NSLog(@"Original list = %@", shoppingList);
    NSLog(@"Mutable list = %@", mutableList);
    
    
    /*Non ordered set*/
    
    NSSet *setOfNumbers = [NSSet setWithArray:@[@3, @4, @1, @5, @10]];
    NSLog(@"Set of numbers = %@", setOfNumbers);
    
    /*Orderd Set*/
    
    NSOrderedSet *orderedSetOfNumbers = [NSOrderedSet orderedSetWithArray
                                  :@[@3, @4, @1, @5, @10]];
    
    NSLog(@"Ordered set of numbers = %@", orderedSetOfNumbers);
    
    
    /*Mutable Ordered Of Set */
    
    NSMutableOrderedSet *mutableSetOfNumbers = [NSMutableOrderedSet orderedSetWithArray:@[@3, @4, @1, @5, @10]];
    
    [mutableSetOfNumbers removeObject:@5];
    
    [mutableSetOfNumbers addObject:@0];
    
    [mutableSetOfNumbers exchangeObjectAtIndex:1 withObjectAtIndex:2];
    
    NSLog(@"Set of numbers = %@", mutableSetOfNumbers);
    
    /*
     Before we move off the topic of sets, there is one other handy class that you may need to know about. The NSCountedSet class can hold a unique instance of an object multiple times. However, the way this is done is different from the way arrays perform the same task. In an array, the same object can appear multiple times. But in a counted set, the object will appear only once, but the set keeps a count of how many times the object was added to the set and will decrement that counter each time you remove an instance of the object. Here is an example:
     
     */
    
    NSCountedSet *countedSetOfNumbers = [NSCountedSet setWithObjects:
                                  @10, @20, @10, @10, @30, nil];
    
    [countedSetOfNumbers addObject:@20];
    
    [countedSetOfNumbers removeObject:@10];
    
    
    NSLog(@"Count for object @10 = %lu",
          (unsigned long)[countedSetOfNumbers countForObject:@10]);
    
    NSLog(@"Count for object @20 = %lu",
          (unsigned long)[countedSetOfNumbers countForObject:@20]);
    
    
}

@end
