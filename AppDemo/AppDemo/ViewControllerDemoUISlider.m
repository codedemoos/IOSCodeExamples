//
//  ViewControllerDemoUISlider.m
//  DemoApp
//
//  Created by Paolo on 01/02/14.
//  Copyright (c) 2014 Paolo. All rights reserved.
//

#import "ViewControllerDemoUISlider.h"

@interface ViewControllerDemoUISlider ()

@end

@implementation ViewControllerDemoUISlider

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
    
      self.title = @"Demo UI Slider";
    
    
    self.slider = [[UISlider alloc] initWithFrame:CGRectMake(0.0,
                                                             0.0,200.0,
                                                             23.0)];
                                                             
                                                             self.slider.center = self.view.center;
                                                             
                                                             
                                                             
                                                             self.slider.minimumValue = 0.0f;
                                                             
                                                             self.slider.maximumValue = 100.0f;
                                                             
                                                             self.slider.value = self.slider.maximumValue / 2.0;
                                                             
                                                             [self.view addSubview:self.slider];
                                                             
                                                           
    [self.slider addTarget:self action:@selector(sliderValueChanged:)
          forControlEvents:UIControlEventValueChanged];
    
}

- (void) sliderValueChanged:(UISlider *)paramSender{
    if ([paramSender isEqual:self.slider]){ NSLog(@"New value = %f", paramSender.value);
    } }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
