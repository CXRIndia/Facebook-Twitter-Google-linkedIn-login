//
//  ViewControllerForTwitterDash.m
//  FacebookTwitterLogin
//
//  Created by Suhas Patil on 7/26/16.
//  Copyright © 2016 OAB Studios. All rights reserved.
//

#import "ViewControllerForTwitterDash.h"

@interface ViewControllerForTwitterDash ()

@end

@implementation ViewControllerForTwitterDash

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    

}


- (IBAction)logoutTwitterButtonPressed:(id)sender {
    
    [[Twitter sharedInstance]logOut];
    [self.navigationController popViewControllerAnimated:YES];

}

@end
