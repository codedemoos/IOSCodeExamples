//
//  ViewControllerDemoUIImage.m
//  AppDemo
//
//  Created by Paolo on 16/02/14.
//  Copyright (c) 2014 Paolo. All rights reserved.
//

#import "ViewControllerDemoUIImage.h"

@interface ViewControllerDemoUIImage ()

@end

@implementation ViewControllerDemoUIImage

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
    
    self.title = @"Demo UI Image";
    
    
    UIImage *macBookAir = [UIImage imageNamed:@"mac1.jpg"];
    self.imageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    self.imageView.image = macBookAir;
    self.imageView.center = self.view.center;
    [self.view addSubview:self.imageView];
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
