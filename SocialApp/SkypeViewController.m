//
//  SkypeViewController.m
//  SocialApp
//
//  Created by abhilash kasarla on 12/10/12.
//  Copyright (c) 2012 punnami hatcheries. All rights reserved.
//

#import "SkypeViewController.h"

@interface SkypeViewController ()

@end

@implementation SkypeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(IBAction)goBack:(id)sender{
    [self dismissModalViewControllerAnimated:NO];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSURL *url = [NSURL URLWithString:@"https://login.skype.com/account/login-form?return_url=https%3A%2F%2Fsecure.skype.com%2Faccount%2Flogin"];
    webView.scalesPageToFit = YES;
	NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
	[webView loadRequest:request];
   
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
