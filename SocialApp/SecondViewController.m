//
//  SecondViewController.m
//  SocialApp
//
//  Created by Maisa Solutions on 01/10/12.
//  Copyright (c) 2012 Maisa Solutions. All rights reserved.
//

#import "SecondViewController.h"
#import "ProfileViewController.h"
#import "InformationViewController.h"
#import "TwitterViewController.h"
#import "fbViewController.h"
#import "GmailViewController.h"
#import "LinkedInViewController.h"
#import "SkypeViewController.h"

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
-(IBAction)AppInfomation:(id)sender{
    InformationViewController *AppInfo = [[InformationViewController alloc]init];
    
    AppInfo.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    
    //AppInfo.modalPresentationStyle = UIModalPresentationFormSheetr;
    [self presentModalViewController:AppInfo animated:YES];
    
}
-(IBAction)twitter:(id)sender{
    TwitterViewController *twitter = [[TwitterViewController alloc]init];
    [self presentModalViewController:twitter animated:NO];
    [self.navigationController pushViewController:twitter animated:YES];
}
-(IBAction)facebook:(id)sender{
    fbViewController *fb = [[fbViewController alloc]init];
    [self presentModalViewController:fb animated:NO];
}
-(IBAction)skype:(id)sender{
    SkypeViewController *skype = [[SkypeViewController alloc]init];
    [self presentModalViewController:skype animated:NO];
}
-(IBAction)gmail:(id)sender{
    GmailViewController *gmail = [[GmailViewController alloc]init];
    [self presentModalViewController:gmail animated:NO];
}
-(IBAction)linkedIn:(id)sender{
    LinkedInViewController *linkedIn = [[LinkedInViewController alloc]init];
    [self presentModalViewController:linkedIn animated:NO];
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
