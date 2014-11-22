//
//  ViewController.m
//  OtelAsya
//
//  Created by Nihat BASMACI on 11/08/14.
//  Copyright (c) 2014 aS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize webViewController;
@synthesize txtOtelID;
@synthesize txtOtelAddress;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier] isEqualToString:@"webViewControllerSegue"]) {
        webViewController = [segue destinationViewController];
        webViewController.otelID = txtOtelID.text;
        webViewController.otelAddress = txtOtelAddress.text;
    }
}

- (IBAction)save:(id)sender {
    if (![txtOtelID.text isEqualToString:@""] && ![txtOtelAddress.text isEqualToString:@""]) {
        [self performSegueWithIdentifier:@"webViewControllerSegue" sender:self];
    }
    else{
        UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Eksik Alan" message:@"Tüm alanları eksiksiz olarak doldurunuz." delegate:self cancelButtonTitle:@"Tamam" otherButtonTitles: nil];
        [alertView show];
    }
}

- (IBAction)hideKeyboard:(id)sender {
    [sender resignFirstResponder];
}

@end
