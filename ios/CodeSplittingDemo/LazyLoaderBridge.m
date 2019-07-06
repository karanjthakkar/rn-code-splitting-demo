//
//  LazyLoaderBridge.m
//  CodeSplittingDemo
//
//  Created by Karan Thakkar on 05/07/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "LazyLoaderBridge.h"
#import "ReactNativeHelper.h"

@implementation LazyLoaderBridge

RCT_EXPORT_MODULE(LazyLoader);

- (instancetype)init
{
  if (self = [super init]) {
    _modulesLoaded = [NSMutableDictionary new];
  }

  return self;
}

+ (BOOL)requiresMainQueueSetup
{
  return YES;
}

- (dispatch_queue_t)methodQueue
{
  return dispatch_get_main_queue();
}

RCT_EXPORT_METHOD(load:(NSString *)screenName
              resolver:(RCTPromiseResolveBlock)resolve
              rejecter:(RCTPromiseRejectBlock)reject)
{
  if (self.modulesLoaded[screenName]) {
    return resolve(@{@"cache": @(YES)});
  }
  
  void (^onLoaded)(void) = ^{
    self.modulesLoaded[screenName] = [NSNumber numberWithBool:YES];
    
    // Only for example
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 2 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
      resolve(@{@"cache": @(NO)});
    });
  };
  [[ReactNativeHelper sharedBridge] lazyLoad:screenName onCompletion:onLoaded];
}

@end
