//
//  TwitterKit.h
//
//  Copyright (c) 2015 Twitter. All rights reserved.
//

#if __has_feature(modules)
@import AddressBook;
@import Accounts;
@import CoreData;
@import Foundation;
@import Social;
@import UIKit;
#else
#import <AddressBook/AddressBook.h>
#import <Accounts/Accounts.h>
#import <CoreData/CoreData.h>
#import <Foundation/Foundation.h>
#import <Social/Social.h>
#import <UIKit/UIKit.h>
#endif

#import "Digits.h"
#import "DGTUser.h"
#import "DGTContacts.h"
#import "DGTContactsUploadResult.h"
#import "DGTErrors.h"
#import "Twitter.h"
#import "TWTRAPIClient.h"
#import "TWTRAPIErrorCode.h"
#import "TWTRComposer.h"
#import "TWTRConstants.h"
#import "TWTRLogInButton.h"
#import "TWTROAuthSigning.h"
#import "TWTRSession.h"
#import "TWTRGuestSession.h"
#import "TWTRShareEmailViewController.h"
#import "TWTRTimelineDataSource.h"
#import "TWTRTimelineViewController.h"
#import "TWTRUserTimelineDataSource.h"
#import "TWTRSearchTimelineDataSource.h"
#import "TWTRTweet.h"
#import "TWTRTweetTableViewCell.h"
#import "TWTRTweetView.h"
#import "TWTRTweetViewDelegate.h"
#import "TWTRUser.h"
#import "Twitter.h"

/**
 *  `TwitterKit` can be used as an element in the array passed to the `+[Fabric with:]`.
 */
#define TwitterKit [Twitter sharedInstance]
