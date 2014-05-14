//
//  ViewControllerDemoUIView.m
//  AppDemo
//
//  Created by Paolo on 01/03/14.
//  Copyright (c) 2014 Paolo. All rights reserved.
//

#import "ViewControllerDemoUIView.h"

@interface ViewControllerDemoUIView ()

@end

@implementation ViewControllerDemoUIView

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
    
    
    self.title = @"Demo UI View";
    
    self.view = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *v1 = [[UIView alloc] initWithFrame:CGRectMake(10.0f,10.0f,150.0f, 150.0f)];
    
    v1.backgroundColor = [UIColor redColor];
    
    v1.tag = 10;
    
    
    UIView *v2 = [[UIView alloc] initWithFrame:CGRectMake(20.0f,20.0f,150.0f, 150.0f)];
    
    v2.backgroundColor = [UIColor greenColor];
    
    v2.tag = 20;
    
    UIView *v3 = [[UIView alloc] initWithFrame:CGRectMake(30.0f,30.0f,150.0f, 150.0f)];
    
    v3.backgroundColor = [UIColor blueColor];
    
    v3.tag = 30;
    
    [self.view addSubview:v1];
    
    [self.view addSubview:v2];
    
    
    [self.view addSubview:v3];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
