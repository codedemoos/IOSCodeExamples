//
//  ViewControllerDemoUISegmentedControl.m
//  DemoApp
//
//  Created by Paolo on 05/02/14.
//  Copyright (c) 2014 Paolo. All rights reserved.
//

#import "ViewControllerDemoUISegmentedControl.h"

@interface ViewControllerDemoUISegmentedControl ()

@end

@implementation ViewControllerDemoUISegmentedControl

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
    
    
    self.title = @"UI Segmented Control Demo";
    
    NSArray *segments = [[NSArray alloc] initWithObjects:
                         @"iPhone",
                         @"iPad",                         @"Auto",
                         nil];
    
    self.mySegmentedControl = [[UISegmentedControl alloc]
                               initWithItems:segments];
    self.mySegmentedControl.center = self.view.center;
    
    [self.mySegmentedControl addTarget:self action:@selector(segmentChanged:)
                      forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:self.mySegmentedControl];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void) segmentChanged:(UISegmentedControl *)paramSender{
    
    if ([paramSender isEqual:self.mySegmentedControl]){
        NSInteger selectedSegmentIndex = [paramSender selectedSegmentIndex];
        NSString  *selectedSegmentText =
        [paramSender titleForSegmentAtIndex:selectedSegmentIndex];
        NSLog(@"Segment %ld with %@ text is selected", (long)selectedSegmentIndex, selectedSegmentText);
    }

}

@end
