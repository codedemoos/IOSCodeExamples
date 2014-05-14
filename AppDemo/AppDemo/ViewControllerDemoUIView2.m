//
//  ViewControllerDemoUIView2.m
//  AppDemo
//
//  Created by Paolo on 01/03/14.
//  Copyright (c) 2014 Paolo. All rights reserved.
//

#import "ViewControllerDemoUIView2.h"

@interface ViewControllerDemoUIView2 ()

@end

@implementation ViewControllerDemoUIView2

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
    
     self.title = @"Demo UI View 2";
    
    
    self.view = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    
    UIView *v1 = [[UIView alloc] initWithFrame:CGRectMake(0,0,150.0f, 150.0f)];
    
    v1.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:v1];

    UIView *v2 = [[UIView alloc] initWithFrame:CGRectMake(30.0f,30.0f,250.0f, 250.0f)];
    
    v2.backgroundColor = [UIColor greenColor];
    
    [self.view addSubview:v2];
   // self.view.bounds.size.width
    
 
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
                                         duration:(NSTimeInterval)duration
{
    [super willAnimateRotationToInterfaceOrientation:toInterfaceOrientation duration:duration];
    
    if (toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft
        ||  toInterfaceOrientation == UIInterfaceOrientationLandscapeRight)
    {
           }
    else
    {
         }
}

@end
