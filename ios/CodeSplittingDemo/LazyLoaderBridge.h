//
//  LazyLoaderBridge.h
//  CodeSplittingDemo
//
//  Created by Karan Thakkar on 05/07/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>

@interface LazyLoaderBridge : NSObject <RCTBridgeModule>

@property NSMutableDictionary *modulesLoaded;

@end
