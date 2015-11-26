//
//  AppDelegate.m
//  Leox
//
//  Created by Bryan A Bolivar M on 11/25/15.
//  Copyright © 2015 OfferAppSAS. All rights reserved.
//

#import "AppDelegate.h"
#import "LXWelcomeViewController.h"
#import "UIColor+LXTheme.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    LXWelcomeViewController *welcomeVC = [[LXWelcomeViewController alloc] initWithNibName:@"LXWelcomeViewController" bundle:nil];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:welcomeVC];
    [navigationController.navigationBar setTranslucent:false];
    navigationController.navigationBar.barTintColor = [UIColor themeColor];
    [self.window setRootViewController:navigationController];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

@end
