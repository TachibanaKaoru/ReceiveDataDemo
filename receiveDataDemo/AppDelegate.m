//
//  AppDelegate.m
//  receiveDataDemo
//
//  Created by Tachibana Kaoru on 12/09/29.
//  Copyright (c) 2012 Toyship.org. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	self.viewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
	self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
	
	if (launchOptions) {
		
		[self.viewController showDebugText:@"\n＿人人人人人人人人＿\n＞ launchOptions ＜\n￣Y^Y^Y^YY^Y^Y^Y￣\n"];
		NSURL *launchURL = [launchOptions objectForKey:UIApplicationLaunchOptionsURLKey];
		[self.viewController showDebugText:[launchURL description]];
        
    }
	
    return YES;
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation{
	
	[self.viewController showDebugText:@"\n＿人人人人＿\n＞ openURL ＜\n￣Y^Y^Y^Y￣"];
	NSString* strSrcApp = [NSString stringWithFormat:@"\nurl:  %@ \nsourceApplication:  %@",[url description],sourceApplication];
	[self.viewController showDebugText:strSrcApp];
	
	NSString* strAnnotation = [NSString stringWithFormat:@"\nannotation:  %@",[annotation description]];
	[self.viewController showDebugText:strAnnotation];
	
	return YES;
	
}

- (void)applicationWillResignActive:(UIApplication *)application
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application
{
}

@end
