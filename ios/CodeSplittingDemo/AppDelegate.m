/**
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import "AppDelegate.h"

#import <React/RCTBridge.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>

#import "ReactNativeHelper.h"
#import "ReactNativeViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  ReactNativeViewController *vc = [[ReactNativeViewController alloc] initWithScreenName:@"ScreenA"];
  self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:vc];
  [self.window makeKeyAndVisible];
  [ReactNativeHelper createBridge];
  return YES;
}

@end
