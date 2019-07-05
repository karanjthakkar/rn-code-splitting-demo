//
//  ReactNativeViewController.m
//  CodeSplittingDemo
//
//  Created by Karan Thakkar on 05/07/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "ReactNativeViewController.h"

#import <React/RCTRootView.h>
#import "ReactNativeHelper.h"

@interface ReactNativeViewController ()

@property NSString *screeName;

@end

@implementation ReactNativeViewController

- (instancetype)initWithScreenName:(NSString *)screeName
{
  self = [super init];
  if (self) {
    _screeName = screeName;
  }
  return self;
}

- (void)loadView
{
  RCTRootView *rootView = [ReactNativeHelper getRootViewWithModuleName:self.screeName
                                                     initialProperties:@{}];
  self.view = rootView;
}

@end
