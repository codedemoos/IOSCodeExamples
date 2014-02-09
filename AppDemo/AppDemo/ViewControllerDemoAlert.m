//
//  ViewControllerDemoAlert.m
//  DemoApp
//
//  Created by Paolo on 25/01/14.
//  Copyright (c) 2014 Paolo. All rights reserved.
//

#import "ViewControllerDemoAlert.h"

@interface ViewControllerDemoAlert ()

@end

@implementation ViewControllerDemoAlert //<UIAlertViewDelegate>

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
    
    
     self.title = @"Demo Alert";
    
    
    
    
}



- (void)viewDidAppear:(BOOL)animated{ [super viewDidAppear:animated];
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSString *message = @"Are you sure you want to open this link in Safari?";
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:@"Open Link"
                              message:message
                              delegate:self
                              cancelButtonTitle:[self noButtonTitle]
                              otherButtonTitles:[self yesButtonTitle], nil];
    [alertView show];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSString *) yesButtonTitle{ return @"Yes";
}
- (NSString *) noButtonTitle{ return @"No";
}


- (void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    NSString *buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
    if ([buttonTitle isEqualToString:[self yesButtonTitle]]){ NSLog(@"User pressed the Yes button.");
    }
    else if ([buttonTitle isEqualToString:[self noButtonTitle]]){
        NSLog(@"User pressed the No button.");
    }
}
@end
