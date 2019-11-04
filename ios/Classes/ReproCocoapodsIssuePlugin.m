#import "ReproCocoapodsIssuePlugin.h"

// This works.
// #include "same_dir.c"

// This also works.
// #include "../external/external_dir.c"

// This fails.
#include <external_dir.c>

// This also fails.
// #include "external_dir.c"

@implementation ReproCocoapodsIssuePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"repro_cocoapods_issue"
            binaryMessenger:[registrar messenger]];
  ReproCocoapodsIssuePlugin* instance = [[ReproCocoapodsIssuePlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getPlatformVersion" isEqualToString:call.method]) {
    result([NSString stringWithUTF8String:get_string()]);
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
