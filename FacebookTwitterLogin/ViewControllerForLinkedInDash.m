//
//  ViewControllerForLinkedInDash.m
//  FacebookTwitterLogin
//
//  Created by Suhas Patil on 7/27/16.
//  Copyright © 2016 OAB Studios. All rights reserved.
//

#import "ViewControllerForLinkedInDash.h"

@interface ViewControllerForLinkedInDash ()

@end

@implementation ViewControllerForLinkedInDash

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *url = @"https://api.linkedin.com/v1/people/~";
    
    if ([LISDKSessionManager hasValidSession]) {
        [[LISDKAPIHelper sharedInstance] getRequest:url
                                            success:^(LISDKAPIResponse *response) {
                                                // do something with response
                                                NSLog(@"Logged in to LinkedIn: \n%@",response);
                                            }
                                              error:^(LISDKAPIError *apiError) {
                                                  // do something with error
                                              }];
    }
    
}


- (IBAction)logoutLinkedInButtonPressed:(id)sender {
    
    [LISDKSessionManager clearSession];
    [self.navigationController popViewControllerAnimated:YES];
    
}
@end
