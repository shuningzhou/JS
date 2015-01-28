//
//  Object.h
//  JS
//
//  Created by shuning zhou on 2015-01-28.
//  Copyright (c) 2015 Intrahealth. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

@protocol ObjectExport <JSExport>

-(void)showAlert:(NSString*)message;

@end

@interface Object : NSObject <ObjectExport>

@end
