//
//  MainViewController.h
//  AppDemo
//
//  Created by Paolo on 09/02/14.
//  Copyright (c) 2014 Paolo. All rights reserved.
//

#import <UIKit/UIKit.h>


#import "ViewControllerDemoAlert.h"

#import "Person.h"

#import "ViewControllerDemoAlert2.h"

#import "ViewControllerDemoUISwitch.h"

#import "ViewControllerDemoUIPicker.h"

#import "ViewControllerDemoUIDatePicker.h"

#import "ViewControllerDemoUIDatePicker2.h"

#import "ViewControllerDemoUISlider.h"

#import "ViewControllerDemoUISegmentedControl.h"

#import "ViewControllerDemoUIBarButtonItem.h"

#import "ViewControllerDemoButton.h"

#import "ViewControllerDemoUIImage.h"

#import "ViewControllerDemoUIWebView.h"

#import "ViewControllerDemoAutoLayout.h"

#import "ViewControllerDemoUIView.h"

#import "ViewControllerDemoUIView2.h"

#import "ViewControllerDemoUITable.h"


@interface MainViewController : UIViewController

@property (nonatomic, strong) UIButton *displayViewControllerDemoAlert;

@property int verticalPosition;

-(int) getVerticalPosForNextButton;

@property (nonatomic, strong) UIButton *displayViewControllerDemoAlert2;

@property (nonatomic, strong) UIButton *displayViewControllerDemoUISwitch;

@property (nonatomic, strong) UIButton *displayViewControllerDemoUIPicker;

@property (nonatomic, strong) UIButton *displayViewControllerDemoUIDatePicker;

@property (nonatomic, strong) UIButton *displayViewControllerDemoUIDatePicker2;

@property (nonatomic, strong) UIButton *displayViewControllerDemoUISlider;

@property (nonatomic, strong) UIButton *displayViewControllerDemoUISegmentedControl;

@property (nonatomic, strong) UIButton *displayViewControllerDemoUIBarButtonItem;

@property (nonatomic, strong) UIButton *displayViewControllerDemoButton;

@property (nonatomic, strong) UIButton *displayViewControllerDemoUIImage;

@property (nonatomic, strong) UIButton *displayViewControllerDemoUIWebView;

@property (nonatomic, strong) UIButton *displayViewControllerDemoUIAutoLayout;

@property (nonatomic, strong) UIButton *displayViewControllerDemoUIView;

@property (nonatomic, strong) UIButton *displayViewControllerDemoUIView2;

@property (nonatomic, strong) UIButton *displayViewControllerDemoUITable;

@end
