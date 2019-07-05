//
//  ReactNativeHelper.h
//  CodeSplittingDemo
//
//  Created by Karan Thakkar on 05/07/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTBridge.h>
#import <React/RCTRootView.h>

@interface ReactNativeHelper : NSObject

+ (UINavigationController *)navigationController;
+ (void)createBridge;
+ (RCTRootView *)getRootViewWithModuleName:(NSString *)moduleName initialProperties:(NSDictionary *)initialProperties;
+ (RCTBridge *)sharedBridge;

@end
