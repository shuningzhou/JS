//
//  ViewController.m
//  JS
//
//  Created by shuning zhou on 2015-01-28.
//  Copyright (c) 2015 Intrahealth. All rights reserved.
//

#import "ViewController.h"
#import "JSEngine.h"
#import "Object.h"

@interface ViewController ()

@property (nonatomic, strong) JSEngine *jsEngine;

@end

@implementation ViewController

- (void)viewDidLoad;
{
    self.jsEngine = [JSEngine new];
}

- (void)viewDidAppear:(BOOL)animated;
{
    [super viewDidAppear:animated];
    
    JSValue* result = [self.jsEngine runFunction:@"hello" withParameters:nil];
    NSString *message = [result toString];
    
    [self showAlertWithMessage:message];
}

- (void)showAlertWithMessage:(NSString *)message;
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:message message:nil delegate:nil cancelButtonTitle:@"Start" otherButtonTitles:nil];
    [alert show];
}

- (IBAction)submit:(id)sender;
{
    [self.jsEngine setJSValue:@"object" withNativeObject:[Object new]];
    [self.jsEngine runFunction:@"showAlert" withParameters:@[self.textField.text]];
}
@end
