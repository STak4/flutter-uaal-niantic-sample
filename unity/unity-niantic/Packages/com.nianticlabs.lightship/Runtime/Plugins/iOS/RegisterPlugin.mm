// Put this into LightshipArPlugin/Runtime/Plugins/iOS

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "IUnityInterface.h"

// $EDIT: add function for load plugin from Unity
#ifdef __cplusplus
extern "C" {
#endif
void UNITY_INTERFACE_EXPORT UNITY_INTERFACE_API LightshipARDK_LoadPluginFromUnity()
{
    NSLog(@"LightshipARDK_LoadPluginFromUnity");
    UnityRegisterRenderingPluginV5(&UnityPluginLoad, &UnityPluginUnload);
}
#ifdef __cplusplus
} // extern "C"
#endif

// UI loaded observer from https://blog.eppz.eu/override-app-delegate-unity-ios-macos-2/
@interface RegisterPlugin : NSObject
@end

__strong RegisterPlugin *_instance;

@implementation RegisterPlugin
+(void)load
{
    NSLog(@"[Override_iOS load]");
    _instance = [RegisterPlugin new];
    [[NSNotificationCenter defaultCenter] addObserver:_instance
                                             selector:@selector(applicationDidFinishLaunching:)
                                                 name:UIApplicationDidFinishLaunchingNotification
                                               object:nil];
}
-(void)applicationDidFinishLaunching:(NSNotification*) notification
{
    NSLog(@"[Override_iOS applicationDidFinishLaunching:%@]", notification);
    // $EDIT: for manual load plugin from Unity
    // UnityRegisterRenderingPluginV5(&UnityPluginLoad, &UnityPluginUnload);
}
@end
