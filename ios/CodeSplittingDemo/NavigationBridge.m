//
//  NavigationBridge.m
//  CodeSplittingDemo
//
//  Created by Karan Thakkar on 05/07/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "NavigationBridge.h"
#import "ReactNativeHelper.h"
#import "ReactNativeViewController.h"

@implementation NavigationBridge

RCT_EXPORT_MODULE(NavigationBridge);

- (dispatch_queue_t)methodQueue
{
  return dispatch_get_main_queue();
}

RCT_EXPORT_METHOD(push:(NSString *)screenName)
{
  ReactNativeViewController *newVc = [[ReactNativeViewController alloc] initWithScreenName:screenName];
  [[ReactNativeHelper navigationController] showViewController:newVc sender:self];
}

@end
