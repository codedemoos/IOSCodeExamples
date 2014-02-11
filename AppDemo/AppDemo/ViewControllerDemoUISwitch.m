//
//  ViewControllerDemoUISwitch.m
//  DemoApp
//
//  Created by Paolo on 27/01/14.
//  Copyright (c) 2014 Paolo. All rights reserved.
//

#import "ViewControllerDemoUISwitch.h"

@interface ViewControllerDemoUISwitch ()

@end

@implementation ViewControllerDemoUISwitch

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
    
    /* Create the switch */
    self.mainSwitch = [[UISwitch alloc] initWithFrame:
                       CGRectMake(100, 100, 0, 0)];
    
    [self.view addSubview:self.mainSwitch];
    
    
    
    [self.mainSwitch addTarget:self
                        action:@selector(switchIsChanged:)
              forControlEvents:UIControlEventValueChanged];
    
    /*
    
    // Adjust the off-mode tint color
    self.mainSwitch.tintColor = [UIColor redColor];
    // Adjust the on-mode tint color
     self.mainSwitch.onTintColor = [UIColor brownColor];
    
    self.mainSwitch.thumbTintColor = [UIColor greenColor];
    */
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) switchIsChanged:(UISwitch *)paramSender{
    NSLog(@"Sender is = %@", paramSender);
    if ([paramSender isOn]){
        NSLog(@"The switch is turned on.");
    } else {
        NSLog(@"The switch is turned off.");
    }
}

@end
