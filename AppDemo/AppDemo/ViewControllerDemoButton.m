//
//  ViewControllerDemoButton.m
//  AppDemo
//
//  Created by Paolo on 16/02/14.
//  Copyright (c) 2014 Paolo. All rights reserved.
//

#import "ViewControllerDemoButton.h"

@interface ViewControllerDemoButton ()

@end

@implementation ViewControllerDemoButton

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
    
    self.title = @"Demo Button";

    
    
    self.myButton = [UIButton buttonWithType:UIButtonTypeSystem];
    self.myButton.frame = CGRectMake(110.0f,
                                     200.0f,
                                     100.0f,
                                     44.0f);
    [self.myButton setTitle:@"Press Me"
                   forState:UIControlStateNormal];
    
    [self.myButton setTitle:@"I'm Pressed"
                   forState:UIControlStateHighlighted];
    
    [self.myButton addTarget:self action:@selector(buttonIsPressed:)
            forControlEvents:UIControlEventTouchDown];
    
    [self.myButton addTarget:self action:@selector(buttonIsTapped:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.myButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) buttonIsPressed:(UIButton *)paramSender{ NSLog(@"Button is pressed.");
}
- (void) buttonIsTapped:(UIButton *)paramSender{ NSLog(@"Button is tapped.");
}

@end
