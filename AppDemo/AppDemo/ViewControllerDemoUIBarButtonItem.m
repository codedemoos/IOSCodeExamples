//
//  ViewControllerDemoUIBarButtonItem.m
//  AppDemo
//
//  Created by Paolo on 13/02/14.
//  Copyright (c) 2014 Paolo. All rights reserved.
//

#import "ViewControllerDemoUIBarButtonItem.h"

@interface ViewControllerDemoUIBarButtonItem ()

@end

@implementation ViewControllerDemoUIBarButtonItem

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
    
    self.title = @"Demo UI Button Bar";
    
    self.navigationItem.rightBarButtonItem =
    [[UIBarButtonItem alloc] initWithTitle:@"Add"
                                     style:UIBarButtonItemStylePlain target:self action:@selector(performAdd:)];
    
}
- (void) performAdd:(id)paramSender{ NSLog(@"Action method got called.");
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
