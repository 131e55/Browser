//
//  AppController.h
//  Browser
//
//  Created by 131e55 on 5/7/14.
//
//

#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>

@interface AppController : NSObject
{
    IBOutlet NSWindow* window;
	IBOutlet WebView* webView;
}
@end
