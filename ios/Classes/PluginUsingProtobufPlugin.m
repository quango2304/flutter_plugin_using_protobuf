#import "PluginUsingProtobufPlugin.h"
#if __has_include(<plugin_using_protobuf/plugin_using_protobuf-Swift.h>)
#import <plugin_using_protobuf/plugin_using_protobuf-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "plugin_using_protobuf-Swift.h"
#endif

@implementation PluginUsingProtobufPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPluginUsingProtobufPlugin registerWithRegistrar:registrar];
}
@end
