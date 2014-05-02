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

@end
