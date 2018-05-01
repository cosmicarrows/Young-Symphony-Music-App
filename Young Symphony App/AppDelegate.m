//
//  AppDelegate.m
//  Young Symphony App
//
//  Created by Laurence Wingo on 2/22/15.
//  Copyright (c) 2015 Laurence Wingo. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
  
    //Create memory on the heap for a UITTabarController
    UITabBarController *tabBar = [[UITabBarController alloc] init];
    
    //Create memory on the heap for tabs that will go into the UITTabbarController
    //Remember to add properties for each tab in the respective interface file or .m file
    FirstViewController *first = [[FirstViewController alloc] init];
    SecondViewController *second = [[SecondViewController alloc] init];
    ThirdViewController *third = [[ThirdViewController alloc] init];
    FourthViewController *fourth = [[FourthViewController alloc] init];
    
    
    
    //Creating an array to hold the tabs for the UITTabbarController
    tabBar.viewControllers = [NSArray arrayWithObjects:first, second, third, fourth, nil];
    self.window.rootViewController = tabBar;
    
    
    //Making the color of the tab bar icons white
    [[UITabBar appearance] setTintColor:[UIColor redColor]];

    
        return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
