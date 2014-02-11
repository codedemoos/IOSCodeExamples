//
//  ViewControllerDemoUIPicker.m
//  DemoApp
//
//  Created by Paolo on 01/02/14.
//  Copyright (c) 2014 Paolo. All rights reserved.
//

#import "ViewControllerDemoUIPicker.h"

@interface ViewControllerDemoUIPicker ()

@end

@implementation ViewControllerDemoUIPicker

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
    
    self.title = @"Demo UIPicker";
    

    
    
    self.myPicker = [[UIPickerView alloc] init];
    
    //UI PICKER DATA SOURCE
    self.myPicker.dataSource = self;
    
    // UI PICKER DELEGATE
    self.myPicker.delegate = self;
    
    //SPECIFIICA POSIZIONE UI PICKEE
    self.myPicker.center = self.view.center;
    
    //AGGIUNGE UI PICKER
    [self.view addSubview:self.myPicker];
    
    
   

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



   //METODI NECESSARI PER DATASOURCE PROTOCOL

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    if ([pickerView isEqual:self.myPicker]){ return 1;
    }
    return 0; }


- (NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if ([pickerView isEqual:self.myPicker]){ return 20;
    }
    return 0; }


  //METODO NECESSARIO PER UI PICKER DELEGATE


- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row
            forComponent:(NSInteger)component{
    
    if ([pickerView isEqual:self.myPicker]){
    /* Row is zero-based and we want the first row (with index 0) to be rendered as Row 1, so we have to +1 every row index */
    
    return [NSString stringWithFormat:@"Row %ld", (long)row + 1];
    }
    
    return nil; }

@end
