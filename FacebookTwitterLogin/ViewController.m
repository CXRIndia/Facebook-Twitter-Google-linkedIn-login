//
//  ViewController.m
//  FacebookTwitterLogin
//
//  Created by Suhas Patil on 7/26/16.
//  Copyright © 2016 OAB Studios. All rights reserved.
//

#import "ViewController.h"


#import "ViewControllerForFacebookDash.h"
#import "ViewControllerForTwitterDash.h"
#import "ViewControllerForGoogleDash.h"
#import "ViewControllerForLinkedInDash.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [GIDSignIn sharedInstance].uiDelegate = self;
}


- (IBAction)facebookLoginButtonPressed:(id)sender {
    
    FBSDKLoginManager *login = [[FBSDKLoginManager alloc] init];
    [login
     logInWithReadPermissions: @[@"public_profile", @"email", @"user_friends"]
     fromViewController:self
     handler:^(FBSDKLoginManagerLoginResult *result, NSError *error) {
         if (error) {
             NSLog(@"Process error");
         } else if (result.isCancelled) {
             NSLog(@"Cancelled");
         } else {
             NSLog(@"Logged in with details:\n %@",result);
             [self navigateToFacebookDash];
         }
     }];
}

-(void) navigateToFacebookDash {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewControllerForFacebookDash *facebookDashVC = [storyboard instantiateViewControllerWithIdentifier:@"ViewControllerForFacebookDash"];
    [self.navigationController pushViewController:facebookDashVC animated:YES];
}


- (IBAction)twitterLoginButtonPressed:(id)sender {
    
    [[Twitter sharedInstance] logInWithCompletion:^(TWTRSession *session, NSError *error){
        if (session)
        {
            NSLog(@"@%@ logged in! (%@)", [session userName], [session userID]);
            [self navigateToTwitterDash];
        } else {
            NSLog(@"error: %@", [error localizedDescription]);
        }
    }];
}

-(void) navigateToTwitterDash {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewControllerForTwitterDash *twitterDashVC = [storyboard instantiateViewControllerWithIdentifier:@"ViewControllerForTwitterDash"];
    [self.navigationController pushViewController:twitterDashVC animated:YES];
}

- (IBAction)googleLoginButtonPressed:(id)sender {
    
    GIDSignIn *signIn = [GIDSignIn sharedInstance];
    signIn.shouldFetchBasicProfile = YES;
    signIn.clientID = kGoogleClientID;
    signIn.uiDelegate = self;
    [GIDSignIn sharedInstance].delegate = self;

    [[GIDSignIn sharedInstance] signIn];

}

- (void)signIn:(GIDSignIn *)signIn
didSignInForUser:(GIDGoogleUser *)user
     withError:(NSError *)error {
    
    // Perform any operations on signed in user here.
    /*
     NSString *userId = user.userID;                  // For client-side use only!
     NSString *idToken = user.authentication.idToken; // Safe to send to the server
     NSString *fullName = user.profile.name;
     NSString *givenName = user.profile.givenName;
     NSString *familyName = user.profile.familyName;
     NSString *email = user.profile.email;
     */
    if (error) {
        NSLog(@"Google login Failed\n%@",error.userInfo);
    }else{
        NSLog(@"Logged in with details:\n%@", user);
        [self navigateToGoogleDash];
    }
   
}

- (void)signIn:(GIDSignIn *)signIn
didDisconnectWithUser:(GIDGoogleUser *)user
     withError:(NSError *)error {
    // Perform any operations when the user disconnects from app here.
    // ...
    
    NSLog(@"Google login Failed");
    
}


-(void) navigateToGoogleDash {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewControllerForGoogleDash *googleDashVC = [storyboard instantiateViewControllerWithIdentifier:@"ViewControllerForGoogleDash"];
    [self.navigationController pushViewController:googleDashVC animated:YES];
}



- (IBAction)LinkedInLoginButtonPressed:(id)sender {
    
    [LISDKSessionManager
     createSessionWithAuth:[NSArray arrayWithObjects:LISDK_BASIC_PROFILE_PERMISSION, nil]
     state:nil
     showGoToAppStoreDialog:YES
     successBlock:^(NSString *returnState) {
         NSLog(@"%s","success called!");
         LISDKSession *session = [[LISDKSessionManager sharedInstance] session];
         [self navigateToLinkedInDash];
         
     }
     errorBlock:^(NSError *error) {
         NSLog(@"%s","error called!");
     }
     ];
     
}

-(void) navigateToLinkedInDash {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewControllerForLinkedInDash *linkedInDashVC = [storyboard instantiateViewControllerWithIdentifier:@"ViewControllerForLinkedInDash"];
    [self.navigationController pushViewController:linkedInDashVC animated:YES];
}

@end
