//
//  SpriteKitDemoViewController.m
//  SpriteKitDemo
//
//  Created by Paolo on 17/05/14.
//  Copyright (c) 2014 Paolo. All rights reserved.
//

#import "SpriteKitDemoViewController.h"



#import "WelcomeScene.h"


@implementation SpriteKitDemoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    
    
  

    
    // Configure the view.
    SKView * skView = (SKView *)self.view;
    skView.showsFPS = YES;
    skView.showsNodeCount = YES;
   
    
    
    
    /*
    The Welcome Scene is presented to the user when the application first launches. Some code therefore needs to be added to the viewDidLoad method of the view controller to make this happen. Edit the SpriteKitDemoViewController.m file to import the WelcomeScene.h file and then to add code to the viewDidLoad method to present the scene to the user:
     */
   
    WelcomeScene *welcome = [[WelcomeScene alloc]
                             initWithSize:CGSizeMake(skView.bounds.size.width,
                                                     skView.bounds.size.height)];
    
    [skView presentScene:welcome];
    
   
    
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

@end
