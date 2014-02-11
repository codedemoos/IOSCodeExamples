//
//  ViewControllerDemoAlert2.m
//  DemoApp
//
//  Created by Paolo on 25/01/14.
//  Copyright (c) 2014 Paolo. All rights reserved.
//

#import "ViewControllerDemoAlert2.h"

@interface ViewControllerDemoAlert2 ()

@end

@implementation ViewControllerDemoAlert2

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
    
    
    self.title = @"Demo Alert 2";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) viewDidAppear:(BOOL)animated{ [super viewDidAppear:animated];
   
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:@"Credit Card Number"
                              message:@"Please enter your credit card number:"
                              delegate:self
                              cancelButtonTitle:[self noButtonTitle]
                              otherButtonTitles:[self yesButtonTitle], nil];
    [alertView setAlertViewStyle:UIAlertViewStylePlainTextInput];
    
    
    /* Display a numerical keypad for this text field */
    
    UITextField *textField = [alertView textFieldAtIndex:0];
    
    textField.keyboardType = UIKeyboardTypeNumberPad;
    
    [alertView show];
}


- (NSString *) yesButtonTitle{ return @"Yes";
    
}
- (NSString *) noButtonTitle{ return @"No";
    
}


- (void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{

    NSString *buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
    
    if ([buttonTitle isEqualToString:[self yesButtonTitle]]){
        
        NSLog(@"User pressed the Yes button.");
        
        UITextField *textField = [alertView textFieldAtIndex:0];
        
        //NSLog(textField.Text);
        
        NSString *string = textField.text;
        
        NSLog(@"%@", string);
       // NSLog(string);
    }
    else if ([buttonTitle isEqualToString:[self noButtonTitle]]){
        NSLog(@"User pressed the No button.");
    }
}
    
@end
