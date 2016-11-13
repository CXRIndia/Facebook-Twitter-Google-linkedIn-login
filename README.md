# Facebook-Twitter-Google-linkedIn-login
This repository contain sample code for FB, twitter, Google and Linkedin.

Bundle id:
com.oabtesting.sociallogin

----------------------------------------------------------
Facebook 4.14.0
- https://developers.facebook.com/docs/ios/getting-started
1. Download and install Facebook SDK for iOS
2. Create projects Facebook app in Facebook developer portal
3. Add bundle identifiers in Facebook app.
4. Add Facebook SDK to your Xcode Project - From the Facebook SDK folder, drag the folder FBSDKCoreKit.Framework, FBSDKLoginKit.Framework, FBSDKShareKit.Framework into your Xcode Projects Framework folder.
5. Configure projects info.plist

----------------------------------------------------------
Google 4.0.0
- https://developers.google.com/identity/sign-in/ios/sdk/
1. Download the Google Sign-In SDK
2. Ass SDK to your project
3. Link dependent needed frameworks
    - AddressBook.framework
    - SafariServices.framework
    - SystemConfiguration.framework
4. Add ObjC linker flag to app target
    - Other Linker Flags: $(OTHER_LDFLAGS) -ObjC
5. Get a configurable file from Google's developer portal
6. Create your project's app in Google developer portal
7. Add URL scheme to your project

----------------------------------------------------------
Twitter
- https://fabric.io/kits/ios/twitterkit/install
1. Install pods
    - 'Fabric'
    - 'TwitterKit'
2. Add runscript for pods
3. Go/Login to Fabric for keys
4.Add API key to info.plist

----------------------------------------------------------
LinkedIn 1.0.7
- https://developer.linkedin.com/docs/ios-sdk
1. Download Linkedin Mobile SDK for iOS
2. Add SDK to your project
2. Create Linkedin app for your project and add bundle identifier
3. Add Linkedin AppID to info.plist


