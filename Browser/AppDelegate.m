//
//  AppDelegate.m
//  Browser
//
//  Created by 131e55 on 5/2/14.
//
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window;
@synthesize webView;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    
    // web view のサイズを window のサイズに合わせる
    [self.window setContentView:self.webView];
    
    // とりあえず Apple 開いてみる
    NSURL *url = [NSURL URLWithString:@"http://www.apple.com"];
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    [[self.webView mainFrame] loadRequest:req];
}

@end
