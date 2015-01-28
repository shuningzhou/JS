//
//  JSEngine.m
//  JS
//
//  Created by shuning zhou on 2015-01-28.
//  Copyright (c) 2015 Intrahealth. All rights reserved.
//

#import "JSEngine.h"

@interface JSEngine ()

@end

@implementation JSEngine

- (id)init;
{
    self = [super init];
    
    if (self)
    {
        self.context = [[JSContext alloc] init];
        NSString *js = [self loadFunctionsFromFile];
        [self.context evaluateScript:js];
    }
    
    return self;
}

- (NSString *)loadFunctionsFromFile
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"lib" ofType:@"js"];
    NSString *jsScript = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    return jsScript;
}

- (void)setJSValue:(NSString*)valueName withNativeObject:(id)object;
{
    self.context[valueName] = object;
}

- (id)runFunction:(NSString*)functionName withParameters:(NSArray*)parameters;
{
    JSValue *function = self.context[functionName];
    JSValue* result = [function callWithArguments:parameters];
    
    return result;
}

@end
