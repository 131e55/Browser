//
//  AppDelegate.h
//  Browser
//
//  Created by 131e55 on 5/2/14.
//
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet WebView *webView;

@end
