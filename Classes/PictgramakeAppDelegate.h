//
//  PictgramakeAppDelegate.h
//  Pictgramake
//
//  Created by Yuka.K on 11/05/13.
//  Copyright 2011 none. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PictgramakeAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    UIWindow *window;
    UITabBarController *tabBarController;
	
	//TouchSelectImage
	int tag_;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;


//TouchSelectImage
@property (nonatomic, assign)  int tag;

@end
