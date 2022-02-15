#import "VandanPlginPlugin.h"
#if __has_include(<vandan_plgin/vandan_plgin-Swift.h>)
#import <vandan_plgin/vandan_plgin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "vandan_plgin-Swift.h"
#endif

@implementation VandanPlginPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftVandanPlginPlugin registerWithRegistrar:registrar];
}
@end
