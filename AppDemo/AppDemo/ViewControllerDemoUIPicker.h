//
//  ViewControllerDemoUIPicker.h
//  DemoApp
//
//  Created by Paolo on 01/02/14.
//  Copyright (c) 2014 Paolo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerDemoUIPicker : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (nonatomic, strong) UIPickerView *myPicker;


@end
