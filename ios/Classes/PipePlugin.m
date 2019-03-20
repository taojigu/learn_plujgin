//
//  PipePlugin.m
//  learn_plugin
//
//  Created by lianjia on 2019/3/20.
//

#import "PipePlugin.h"

static NSString * const PipePluginChannelName = @"com.gujitao.pipePlugin";

@implementation PipePlugin

+ (void)registerWithRegistrar:(nonnull NSObject<FlutterPluginRegistrar> *)registrar {
    FlutterMethodChannel* channel = [FlutterMethodChannel
                                     methodChannelWithName:PipePluginChannelName
                                     binaryMessenger:[registrar messenger]];
    PipePlugin* instance = [[PipePlugin alloc] init];
    [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
    
    if ([call.method isEqualToString:@"sendString"]) {
        NSDictionary *param = call.arguments;
        NSString *text = param[@"text"];
        NSLog(@"The pipe plugin send text: %@",text);
        result(nil);
    }
    
    
}

@end
