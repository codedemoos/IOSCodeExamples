//
//  MainViewController.m
//  AppDemo
//
//  Created by Paolo on 09/02/14.
//  Copyright (c) 2014 Paolo. All rights reserved.
//

#import "MainViewController.h"

#import "ObjectiveCLanguageDemo.h"

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
    
    
    [ObjectiveCLanguageDemo rundDemoos];
    
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
    self.displayViewControllerDemoAlert.frame = CGRectMake(20, [self getVerticalPosForNextButton], 200, 100);
    [self.displayViewControllerDemoAlert setTitle:@"Go To View Alert Demo" forState:UIControlStateNormal];
    [self.displayViewControllerDemoAlert sizeToFit];
    [self.displayViewControllerDemoAlert addTarget:self action:@selector(performDisplayViewControllerDemoAlert:) forControlEvents:UIControlEventTouchUpInside];
    [scrollView addSubview:self.displayViewControllerDemoAlert];
    //DEMO - END
    
    
    //////////////
    
    //DEMO - START
    
    self.displayViewControllerDemoAlert2 = [UIButton  buttonWithType:UIButtonTypeSystem];
    
    self.displayViewControllerDemoAlert2.frame = CGRectMake(20, [self getVerticalPosForNextButton], 200, 100);
    
    [self.displayViewControllerDemoAlert2 setTitle:@"Go To View Alert Demo 2" forState:UIControlStateNormal];
    
    [self.displayViewControllerDemoAlert2 sizeToFit];
    
    [self.displayViewControllerDemoAlert2 addTarget:self action:@selector(performDisplayViewControllerDemoAlert2:) forControlEvents:UIControlEventTouchUpInside];
    
    [scrollView  addSubview:self.displayViewControllerDemoAlert2];
    
    //DEMO - END
    
    ///////
    
    
    //DEMO - START
    
    self.displayViewControllerDemoUISwitch = [UIButton  buttonWithType:UIButtonTypeSystem];
    
    self.displayViewControllerDemoUISwitch.frame = CGRectMake(20, [self getVerticalPosForNextButton], 200, 100);
    [self.displayViewControllerDemoUISwitch setTitle:@"Go To UI Switch Demo " forState:UIControlStateNormal];
    
    [self.displayViewControllerDemoUISwitch sizeToFit];
    
    [self.displayViewControllerDemoUISwitch addTarget:self action:@selector(performDisplayViewControllerDemoUISwitch:) forControlEvents:UIControlEventTouchUpInside];
    
    [scrollView  addSubview:self.displayViewControllerDemoUISwitch];
    
    //DEMO - END
    
    
    //UIPICKER
    
    //DEMO - START
    
    self.displayViewControllerDemoUIPicker = [UIButton  buttonWithType:UIButtonTypeSystem];
    
    self.displayViewControllerDemoUIPicker.frame = CGRectMake(20, [self getVerticalPosForNextButton], 200, 100);
    
    [self.displayViewControllerDemoUIPicker setTitle:@"Go To UI Picker Demo " forState:UIControlStateNormal];
    
    [self.displayViewControllerDemoUIPicker sizeToFit];
    
    [self.displayViewControllerDemoUIPicker addTarget:self action:@selector(performDisplayViewControllerDemoUIPicker:) forControlEvents:UIControlEventTouchUpInside];
    
    [scrollView  addSubview:self.displayViewControllerDemoUIPicker];
    
    //DEMO - END
    
    
    
    
    //UIDATEPICKER
    
    //DEMO - START
    
    self.displayViewControllerDemoUIDatePicker = [UIButton  buttonWithType:UIButtonTypeSystem];
    
    self.displayViewControllerDemoUIDatePicker.frame = CGRectMake(20, [self getVerticalPosForNextButton], 200, 100);
    
    [self.displayViewControllerDemoUIDatePicker setTitle:@"Go To UI Date Picker Demo " forState:UIControlStateNormal];
    
    [self.displayViewControllerDemoUIDatePicker sizeToFit];
    
    [self.displayViewControllerDemoUIDatePicker addTarget:self action:@selector(performDisplayViewControllerDemoUIDatePicker:) forControlEvents:UIControlEventTouchUpInside];
    
    [scrollView  addSubview:self.displayViewControllerDemoUIDatePicker];
    
    //DEMO - END
    
    //DEMO - START
    
    self.displayViewControllerDemoUIDatePicker2 = [UIButton  buttonWithType:UIButtonTypeSystem];
    
    self.displayViewControllerDemoUIDatePicker2.frame = CGRectMake(20, [self getVerticalPosForNextButton], 200, 100);
    [self.displayViewControllerDemoUIDatePicker2 setTitle:@"Go To UI Date Picker Demo 2" forState:UIControlStateNormal];
    
    [self.displayViewControllerDemoUIDatePicker2 sizeToFit];
    
    [self.displayViewControllerDemoUIDatePicker2 addTarget:self action:@selector(performDisplayViewControllerDemoUIDatePicker2:) forControlEvents:UIControlEventTouchUpInside];
    
    [scrollView  addSubview:self.displayViewControllerDemoUIDatePicker2];
    
    //DEMO - END
    
    
    
    //DEMO - START
    
    self.displayViewControllerDemoUISlider= [UIButton  buttonWithType:UIButtonTypeSystem];
    
    self.displayViewControllerDemoUISlider.frame = CGRectMake(20, [self getVerticalPosForNextButton], 200, 100);
    
    [self.displayViewControllerDemoUISlider setTitle:@"Go To UI Slider Demo" forState:UIControlStateNormal];
    
    [self.displayViewControllerDemoUISlider sizeToFit];
    
    [self.displayViewControllerDemoUISlider addTarget:self action:@selector(performDisplayViewControllerDemoUISlider:) forControlEvents:UIControlEventTouchUpInside];
    
    [scrollView  addSubview:self.displayViewControllerDemoUISlider];
    
    //DEMO - END
    
    
    
    //DEMO - START
    
    self.displayViewControllerDemoUISegmentedControl= [UIButton  buttonWithType:UIButtonTypeSystem];
    
    self.displayViewControllerDemoUISegmentedControl.frame = CGRectMake(20, [self getVerticalPosForNextButton], 200, 100);
    
    [self.displayViewControllerDemoUISegmentedControl setTitle:@"Go To UI Segmented Control Demo" forState:UIControlStateNormal];
    
    [self.displayViewControllerDemoUISegmentedControl sizeToFit];
    
    [self.displayViewControllerDemoUISegmentedControl addTarget:self action:@selector(performDisplayViewControllerDemoUISegmentedControl:) forControlEvents:UIControlEventTouchUpInside];
    
    [scrollView  addSubview:self.displayViewControllerDemoUISegmentedControl];
    
    
    //DEMO - END
    
    //DEMO - START
    
    self.displayViewControllerDemoUIBarButtonItem = [ UIButton  buttonWithType:UIButtonTypeSystem];
    
    self.displayViewControllerDemoUIBarButtonItem.frame = CGRectMake(20, [self getVerticalPosForNextButton], 200, 100);
    
    [self.displayViewControllerDemoUIBarButtonItem setTitle:@"Go To UI Bar Button Item Demo" forState:UIControlStateNormal];
    
    [self.displayViewControllerDemoUIBarButtonItem sizeToFit];
    
    [self.displayViewControllerDemoUIBarButtonItem addTarget:self action:@selector(performDisplayViewControllerDemoUIBarButtonItem:) forControlEvents:UIControlEventTouchUpInside];
    
    [scrollView  addSubview:self.displayViewControllerDemoUIBarButtonItem];
    
    
    //DEMO - END
    


    
    //DEMO - START
    
    self.displayViewControllerDemoButton = [ UIButton  buttonWithType:UIButtonTypeSystem];
    
    self.displayViewControllerDemoButton.frame = CGRectMake(20, [self getVerticalPosForNextButton], 200, 100);
    
    [self.displayViewControllerDemoButton setTitle:@"Go To Button Controller" forState:UIControlStateNormal];
    
    [self.displayViewControllerDemoButton sizeToFit];
    
    [self.displayViewControllerDemoButton addTarget:self action:@selector(performDisplaydViewControllerDemoButton:) forControlEvents:UIControlEventTouchUpInside];
    
    [scrollView  addSubview:self.displayViewControllerDemoButton];
    
    
    //DEMO - END
    
    
    
    //DEMO - START
    
    self.displayViewControllerDemoUIImage = [ UIButton  buttonWithType:UIButtonTypeSystem];
    
    self.displayViewControllerDemoUIImage.frame = CGRectMake(20, [self getVerticalPosForNextButton], 200, 100);
    
    [self.displayViewControllerDemoUIImage setTitle:@"Go To Button UI Image Controller" forState:UIControlStateNormal];
    
    [self.displayViewControllerDemoUIImage sizeToFit];
    
    [self.displayViewControllerDemoUIImage addTarget:self action:@selector(performDisplaydViewControllerDemoUIImage:) forControlEvents:UIControlEventTouchUpInside];
    
    [scrollView  addSubview:self.displayViewControllerDemoUIImage];
    
    
    //DEMO - END
    
}

- (int) getVerticalPosForNextButton{

    if(self.verticalPosition == 0){
        
        self.verticalPosition =40;
    
        NSLog(@"init %d",self.verticalPosition);
    
    }else{
        
        self.verticalPosition = self.verticalPosition+40;
    
    
    NSLog(@"new %d",self.verticalPosition);
    }
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

       
    
    
   
}
- (void) performDisplayViewControllerDemoAlert2:(id)paramSender{
    
    
    //INIZIALIZZA IL VIEWCONTROLLER
    ViewControllerDemoAlert2 *secondController = [[ViewControllerDemoAlert2 alloc]
                                                  initWithNibName:nil
                                                  bundle:NULL];
    
    //ESEGUE LA NAVIGAZIONE
    [self.navigationController pushViewController:secondController
                                         animated:NO];
    
    
    
    
}


- (void) performDisplayViewControllerDemoUISwitch:(id)paramSender{
    
    
    
    ViewControllerDemoUISwitch *secondController = [[ViewControllerDemoUISwitch alloc]
                                                    initWithNibName:nil
                                                    bundle:NULL];
    
    [self.navigationController pushViewController:secondController
                                         animated:NO];
    
    
}


- (void) performDisplayViewControllerDemoUIPicker:(id)paramSender{
    
    
    
    ViewControllerDemoUIPicker *secondController = [[ViewControllerDemoUIPicker alloc]
                                                    initWithNibName:nil
                                                    bundle:NULL];
    
    
    [self.navigationController pushViewController:secondController
                                         animated:NO];
    
    
}


- (void) performDisplayViewControllerDemoUIDatePicker:(id)paramSender{
    
    
    
    ViewControllerDemoUIDatePicker *secondController = [[ViewControllerDemoUIDatePicker alloc]
                                                        initWithNibName:nil
                                                        bundle:NULL];
    
    
    [self.navigationController pushViewController:secondController
                                         animated:NO];
    
    
}


- (void) performDisplayViewControllerDemoUIDatePicker2:(id)paramSender{
    
    
    
    ViewControllerDemoUIDatePicker2 *secondController = [[ViewControllerDemoUIDatePicker2 alloc]
                                                         initWithNibName:nil
                                                         bundle:NULL];

    
    [self.navigationController pushViewController:secondController
                                         animated:NO];
    
}


- (void) performDisplayViewControllerDemoUISlider:(id)paramSender{
    
    
    ViewControllerDemoUISlider *secondController = [[ViewControllerDemoUISlider alloc]
                                                    initWithNibName:nil
                                                    bundle:NULL];
    
    [self.navigationController pushViewController:secondController animated:NO];
    
}


- (void) performDisplayViewControllerDemoUISegmentedControl:(id)paramSender{
    
    
    ViewControllerDemoUISegmentedControl *secondController = [[ViewControllerDemoUISegmentedControl alloc]
                                                              initWithNibName:nil
                                                              bundle:NULL];
    
    [self.navigationController pushViewController:secondController animated:NO];
    
    
}


- (void) performDisplayViewControllerDemoUIBarButtonItem:(id)paramSender{
    
    
   ViewControllerDemoUIBarButtonItem *secondController = [[ViewControllerDemoUIBarButtonItem alloc]
                                                              initWithNibName:nil
                                                              bundle:NULL];
    
    [self.navigationController pushViewController:secondController animated:NO];
    
    
}

- (void) performDisplaydViewControllerDemoButton:(id)paramSender{
    
    
    ViewControllerDemoButton *secondController = [[ViewControllerDemoButton alloc]
                                                              initWithNibName:nil
                                                              bundle:NULL];
    
    [self.navigationController pushViewController:secondController animated:NO];
    
    
}

- (void) performDisplaydViewControllerDemoUIImage:(id)paramSender{
    
    
    ViewControllerDemoUIImage *secondController = [[ViewControllerDemoUIImage alloc]
                                                  initWithNibName:nil
                                                  bundle:NULL];
    
    [self.navigationController pushViewController:secondController animated:NO];
    
    
}


@end
