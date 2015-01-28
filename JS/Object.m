//
//  Object.m
//  JS
//
//  Created by shuning zhou on 2015-01-28.
//  Copyright (c) 2015 Intrahealth. All rights reserved.
//

#import "Object.h"
#import <JavaScriptCore/JavaScriptCore.h>
#import <UIKit/UIKit.h>


@implementation Object

-(void)showAlert:(NSString*)message;
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:message message:nil delegate:nil cancelButtonTitle:@"Start" otherButtonTitles:nil];
    [alert show];
}

@end

