//
//  WebViewController.m
//  OtelAsya
//
//  Created by Nihat BASMACI on 11/08/14.
//  Copyright (c) 2014 aS. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

@synthesize webView;
@synthesize otelID;
@synthesize otelAddress;
@synthesize activityIndicator;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self openWebPage];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)openWebPage{
    NSString *URL = [NSString stringWithFormat:@"http://%@/Default.aspx?OTEL_ID=%@", otelAddress, otelID];
    
    NSURL *url = [[NSURL alloc]initWithString:URL];
    NSURLRequest *URLRequest = [[NSURLRequest alloc]initWithURL:url];
    [webView loadRequest:URLRequest];
}


- (void)webViewDidStartLoad:(UIWebView *)webView{
    activityIndicator = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    [activityIndicator setCenter:self.view.center];
    [self.view addSubview:activityIndicator];
    [activityIndicator startAnimating];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView{
    [activityIndicator stopAnimating];
}

@end
