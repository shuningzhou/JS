//
//  JSEngine.h
//  JS
//
//  Created by shuning zhou on 2015-01-28.
//  Copyright (c) 2015 Intrahealth. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

@interface JSEngine : NSObject

@property (nonatomic, strong) JSContext *context;

@end
