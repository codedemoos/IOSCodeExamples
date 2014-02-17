//
//  ViewControllerDemoUIWebView.m
//  AppDemo
//
//  Created by Paolo on 17/02/14.
//  Copyright (c) 2014 Paolo. All rights reserved.
//

#import "ViewControllerDemoUIWebView.h"

@interface ViewControllerDemoUIWebView ()

@end

@implementation ViewControllerDemoUIWebView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)webViewDidStartLoad:(UIWebView *)webView{
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
}
- (void)webViewDidFinishLoad:(UIWebView *)webView{
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{ [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
}
- (void)viewDidLoad{
    [super viewDidLoad];
    
      self.title = @"Demo UI Web View ";
    self.myWebView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    self.myWebView.delegate = self;
    self.myWebView.scalesPageToFit = YES;
    [self.view addSubview:self.myWebView];
    NSURL *url = [NSURL URLWithString:@"http://www.google.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.myWebView loadRequest:request];
}

@end
