#import "ReproCocoapodsIssuePlugin.h"
#include <external_dir.c>
#include "same_dir.c"

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
//    result([NSString stringWithUTF8String:get_string_from_same_dir()]);
    result([NSString stringWithUTF8String:get_string_from_external_dir()]);
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
