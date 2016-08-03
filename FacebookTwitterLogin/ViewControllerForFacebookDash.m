//
//  ViewControllerForFacebookDash.m
//  FacebookTwitterLogin
//
//  Created by Suhas Patil on 7/26/16.
//  Copyright © 2016 OAB Studios. All rights reserved.
//

#import "ViewControllerForFacebookDash.h"

@interface ViewControllerForFacebookDash ()

@end

@implementation ViewControllerForFacebookDash

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if ([FBSDKAccessToken currentAccessToken]) {
        [[[FBSDKGraphRequest alloc] initWithGraphPath:@"me" parameters:nil]
         startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection,
                                      id result, NSError *error) {
             if (!error) {
                 NSLog(@"Logged in user details: \n%@", result);
             }
         }];
    }
}


- (IBAction)logoutFacebookButtonPressed:(id)sender {
        
    if ([FBSDKAccessToken currentAccessToken]){
        
        [FBSDKAccessToken setCurrentAccessToken:nil];
        [self.navigationController popViewControllerAnimated:YES];
    }
}

@end
