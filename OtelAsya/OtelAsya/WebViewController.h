//
//  WebViewController.h
//  OtelAsya
//
//  Created by Nihat BASMACI on 11/08/14.
//  Copyright (c) 2014 aS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController <UIWebViewDelegate>

@property NSString *otelID;
@property NSString *otelAddress;
@property UIActivityIndicatorView *activityIndicator;

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end
