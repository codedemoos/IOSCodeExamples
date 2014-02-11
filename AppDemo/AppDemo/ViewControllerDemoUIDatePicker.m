//
//  ViewControllerDemoUIDatePicker.m
//  DemoApp
//
//  Created by Paolo on 01/02/14.
//  Copyright (c) 2014 Paolo. All rights reserved.
//

#import "ViewControllerDemoUIDatePicker.h"

@interface ViewControllerDemoUIDatePicker ()

@end

@implementation ViewControllerDemoUIDatePicker

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    
        self.title = @"Demo UI Date Picker";
    
    self.myDatePicker = [[UIDatePicker alloc] init];
    
    self.myDatePicker.center = self.view.center;
    
    [self.view addSubview:self.myDatePicker];
    
    
    
    [self.myDatePicker addTarget:self
                          action:@selector(datePickerDateChanged:)
                forControlEvents:UIControlEventValueChanged
     ];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) datePickerDateChanged:(UIDatePicker *)paramDatePicker{
    
    if ([paramDatePicker isEqual:self.myDatePicker]){
        NSLog(@"Selected date = %@", paramDatePicker.date);
    }
}

@end
