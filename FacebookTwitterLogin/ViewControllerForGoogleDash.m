//
//  ViewControllerForGoogleDash.m
//  FacebookTwitterLogin
//
//  Created by Suhas Patil on 7/26/16.
//  Copyright © 2016 OAB Studios. All rights reserved.
//

#import "ViewControllerForGoogleDash.h"

@interface ViewControllerForGoogleDash ()

@end

@implementation ViewControllerForGoogleDash

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)logoutGoogleButtonPressed:(id)sender {
    
    [[GIDSignIn sharedInstance] signOut];
    [self.navigationController popViewControllerAnimated:YES];
}
@end
