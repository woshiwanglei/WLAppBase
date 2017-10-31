//
//  AppDelegate.m
//  WLAppBase
//
//  Created by wanglei on 2017/10/31.
//  Copyright © 2017年 wanglei. All rights reserved.
//

#import "AppDelegate.h"
#import "WLTabBarController.h"
#import "WLTabBar.h"
#import "WLTestVC.h"
#import "IQKeyboardManager.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [[IQKeyboardManager sharedManager] setCanAdjustTextView:YES];
    
    WLTabBarController *rootVC = [WLTabBarController tabBarControllerWithAddChildVCsBlock:^(WLTabBarController *tabBarC) {
        [tabBarC addChildVC:[WLTestVC new] normalImageName:@"tabbar_find_n" selectedImageName:@"tabbar_find_h" isRequiredNavController:YES];
        [tabBarC addChildVC:[UIViewController new] normalImageName:@"tabbar_sound_n" selectedImageName:@"tabbar_sound_h" isRequiredNavController:YES];
        [tabBarC addChildVC:[UIViewController new] normalImageName:@"tabbar_download_n" selectedImageName:@"tabbar_download_h" isRequiredNavController:YES];
        [tabBarC addChildVC:[UIViewController new] normalImageName:@"tabbar_me_n" selectedImageName:@"tabbar_me_h" isRequiredNavController:YES];
    }];
    
    self.window.rootViewController = rootVC;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
