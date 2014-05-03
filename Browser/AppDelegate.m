//
//  AppDelegate.m
//  Browser
//
//  Created by 131e55 on 5/2/14.
//
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize mainWebView;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // MainWebView inialize
    [mainWebView initialize];
}

// 閉じた後の再表示の実装
- (BOOL)applicationShouldHandleReopen:(NSApplication *)sender hasVisibleWindows:(BOOL)flag {
    [self.window makeKeyAndOrderFront:nil];
    return NO;
}

@end
