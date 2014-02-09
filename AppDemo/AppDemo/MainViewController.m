//
//  MainViewController.m
//  AppDemo
//
//  Created by Paolo on 09/02/14.
//  Copyright (c) 2014 Paolo. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

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
    
    //SET TITLE
    self.title = @"Demo iOS";
    
    
    [self demoFoundation];
    
    //CREATE A SCROLL VIEW
    UIScrollView* scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    scrollView.scrollEnabled = YES;
    scrollView.pagingEnabled = YES;
    scrollView.showsVerticalScrollIndicator = YES;
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.contentSize = CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height);
    [self.view addSubview:scrollView];
    
    self.verticalPosition = 0;
    
    //DEMO - START
    self.displayViewControllerDemoAlert = [UIButton  buttonWithType:UIButtonTypeSystem];
    self.displayViewControllerDemoAlert.frame = CGRectMake(20, [self verticalPosition], 200, 100);
    [self.displayViewControllerDemoAlert setTitle:@"Go To View Alert Demo" forState:UIControlStateNormal];
    [self.displayViewControllerDemoAlert sizeToFit];
    [self.displayViewControllerDemoAlert addTarget:self action:@selector(performDisplayViewControllerDemoAlert:) forControlEvents:UIControlEventTouchUpInside];
    [scrollView addSubview:self.displayViewControllerDemoAlert];
    //DEMO - END
    
    

    
}

- (int)getVerticalPost{

    if(self.verticalPosition == 0)
        self.verticalPosition =120;
    else
        self.verticalPosition = self.verticalPosition+40;
    
    return self.verticalPosition;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) performDisplayViewControllerDemoAlert:(id)paramSender{
    //INIZIALIZZA IL VIEWCONTROLLER
    ViewControllerDemoAlert *secondController = [[ViewControllerDemoAlert alloc]
                                                 initWithNibName:nil
                                                 bundle:NULL];
    //ESEGUE LA NAVIGAZIONE
    [self.navigationController pushViewController:secondController
                                         animated:NO];
   
}

-(void) demoFoundation{

    //CREATE THE OBJECT
    Person *p1 = [[Person alloc] init];
    
    //ACCESS TO THE PROPERTIES AND ASSIGN SOME VALUES
    p1.firstName = @"Paolo";
    p1.lastName = @"Nappi";
    
    
    
   
}



@end
