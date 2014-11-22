//
//  ViewController.h
//  OtelAsya
//
//  Created by Nihat BASMACI on 11/08/14.
//  Copyright (c) 2014 aS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WebViewController.h"

@interface ViewController : UIViewController

@property WebViewController *webViewController;
@property (weak, nonatomic) IBOutlet UITextField *txtOtelID;
@property (weak, nonatomic) IBOutlet UITextField *txtOtelAddress;

- (IBAction)save:(id)sender;

@end
