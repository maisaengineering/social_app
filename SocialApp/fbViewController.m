//
//  fbViewController.m
//  SocialApp
//
//  Created by abhilash kasarla on 12/10/12.
//  Copyright (c) 2012 punnami hatcheries. All rights reserved.
//

#import "fbViewController.h"

@interface fbViewController ()

@end

@implementation fbViewController

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
    NSURL *url = [NSURL URLWithString:@"https://www.facebook.com/login.php"];
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
