//
//  ViewController.m
//  SocialApp
//
//  Created by Maisa Solutions on 01/10/12.
//  Copyright (c) 2012 Maisa Solutions. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
-(IBAction)showSecond:(id)sender
{
   SecondViewController *second = [[SecondViewController alloc]init];
    second.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentModalViewController:second animated:YES];

 }
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
