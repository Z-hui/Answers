//
//  AppDelegate.m
//  Answer
//
//  Created by HSEDU on 2018/1/23.
//  Copyright © 2018年 HSEDU. All rights reserved.
//

#import "AppDelegate.h"
#import "KYMainViewController.h"
#import "KYAnswersViewController.h"
#import "KYMeViewController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:(CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height))];
    UITabBarController *tabBarVC = [[UITabBarController alloc] init];
    KYMainViewController *mainVC = [[KYMainViewController alloc] init];
    mainVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"主页" image:[UIImage imageNamed:@"tabMainImage"] selectedImage:nil];
    KYAnswersViewController *answersVC = [[KYAnswersViewController alloc] init];
    answersVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"答主" image:[UIImage imageNamed:@"tabAnswerImage"] selectedImage:nil];
    KYMeViewController *meVC = [[KYMeViewController alloc] init];
    meVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我的" image:[UIImage imageNamed:@"tabMeImage"] selectedImage:nil];
    tabBarVC.viewControllers = @[mainVC,answersVC,meVC];
    self.window.rootViewController = tabBarVC;
    [self.window makeKeyAndVisible];
    
    // Override point for customization after application launch.
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
