//
//  SecondViewController.m
//  SocialApp
//
//  Created by Maisa Solutions on 01/10/12.
//  Copyright (c) 2012 Maisa Solutions. All rights reserved.
//

#import "SecondViewController.h"
#import "ProfileViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
-(IBAction)goBack:(id)sender{
    [self dismissModalViewControllerAnimated:YES];
}
-(IBAction)profileViewController:(id)sender{
    ProfileViewController *profile = [[ProfileViewController alloc]init];
    profile.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentModalViewController:profile animated:YES];
    UINavigationController *navController = [[UINavigationController alloc]initWithRootViewController:profile]; 
    
    [self presentModalViewController:navController animated:YES];

    
}

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
