//
//  ViewControllerDemoUITable.m
//  AppDemo
//
//  Created by Paolo on 15/03/14.
//  Copyright (c) 2014 Paolo. All rights reserved.
//

#import "ViewControllerDemoUITable.h"

static NSString *TableViewCellIdentifier = @"MyCells";

@interface ViewControllerDemoUITable ()  <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *myTableView;

@end

@implementation ViewControllerDemoUITable

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if ([tableView isEqual:self.myTableView]){
        
        return 30.0f;
        
    }
    return 40.0f;

}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.title = @"Demo UI Table";

    
    self.myTableView = [[UITableView alloc]
                        initWithFrame:self.view.bounds
                        style:UITableViewStylePlain];
    [self.myTableView registerClass:[UITableViewCell class]
             forCellReuseIdentifier:TableViewCellIdentifier];
    
    self.myTableView.delegate = self;
    
    self.myTableView.dataSource = self;
    /* Make sure our table view resizes correctly */
    self.myTableView.autoresizingMask =
    UIViewAutoresizingFlexibleWidth |
    UIViewAutoresizingFlexibleHeight;
    [self.view addSubview:self.myTableView];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    if ([tableView isEqual:self.myTableView]){ return 1;
    }
    return 0;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if ([tableView isEqual:self.myTableView]){ switch (section){
        case 0:{ return 3;
            break; }
        case 1:{ return 5;
            break; }
        case 2:{ return 8;
            break; }
    } }
    return 0; }

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = nil;
   
    if([tableView isEqual:self.myTableView]){

    cell = [tableView dequeueReusableCellWithIdentifier:TableViewCellIdentifier forIndexPath:indexPath];
        
    
    cell.textLabel.text = [NSString stringWithFormat:  @"Section %ld, Cell %ld",
         
                           (long)indexPath.section, (long)indexPath.row];
        
      // cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
         
    }
    return cell; }





- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
   
    
      NSLog(@"Click element = %@", indexPath);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if (section == 0){ return 30.0f;
    }

return 0.0f; }




- (CGFloat) tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    if (section == 0){ return 30.0f;
    }
    return 0.0f; }

- (UILabel *) newLabelWithTitle:(NSString *)paramTitle{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero]; label.text = paramTitle;
    label.backgroundColor = [UIColor clearColor];
    [label sizeToFit];
    return label;
}
- (UIView *) tableView:(UITableView *)tableView
viewForHeaderInSection:(NSInteger)section{
    if (section == 0){
        return [self newLabelWithTitle:@"Section 1 Header"];
    }else if(section == 1){
          return [self newLabelWithTitle:@"Section 2 Header"];
    }
    return nil; }
- (UIView *) tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    if (section == 0){
        return [self newLabelWithTitle:@"Section 1 Footer"];
    }
    return nil; }
@end
