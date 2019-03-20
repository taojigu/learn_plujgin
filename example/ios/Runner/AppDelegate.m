#include "AppDelegate.h"
#include "GeneratedPluginRegistrant.h"
#import <learn_plugin/PipePlugin.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [GeneratedPluginRegistrant registerWithRegistry:self];
  // Override point for customization after application launch.
    NSObject<FlutterPluginRegistrar> *strar = [self registrarForPlugin:@"PipePlugin"];
    [PipePlugin registerWithRegistrar:strar];
    return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end
