//
//  ReactNativeHelper.m
//  CodeSplittingDemo
//
//  Created by Karan Thakkar on 05/07/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "ReactNativeHelper.h"

static RCTBridge *_sharedBridge;

@implementation ReactNativeHelper

+ (UINavigationController *)navigationController
{
  return (UINavigationController *)[UIApplication sharedApplication].keyWindow.rootViewController;
}

+ (void)createBridge
{
  NSURL *jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:nil fallbackResource:@"index"fallbackExtension:@"jsbundle"];
  
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    _sharedBridge = [[RCTBridge alloc] initWithBundleURL:jsCodeLocation
                                          moduleProvider:nil
                                           launchOptions:nil];
  });
}

+ (RCTBridge *)sharedBridge
{
  return _sharedBridge;
}

+ (RCTRootView *)getRootViewWithModuleName:(NSString *)moduleName initialProperties:(NSDictionary *)initialProperties
{
  RCTRootView *rootView = [[RCTRootView alloc] initWithBridge: _sharedBridge
                                                   moduleName: moduleName
                                            initialProperties: initialProperties];
  return rootView;
}

@end
