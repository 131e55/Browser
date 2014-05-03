//
//  MainWebView.m
//  Browser
//
//  Created by 131e55 on 5/3/14.
//
//

#import "MainWebView.h"

@implementation MainWebView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

// 初期化
- (void)initialize
{
    // とりあえず Apple を開いてみる
    NSURL *url = [NSURL URLWithString:@"http://www.apple.com"];
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    [[self mainFrame] loadRequest:req];
}

// リロード
- (void)reload
{
    [[self mainFrame] reload];
}

- (BOOL)acceptsFirstResponder
{
    return YES;
}

- (BOOL)becomeFirstResponder
{
    return YES;
}

// ショートカットキー受付
- (void)keyDown:(NSEvent *)event
{
    int keycode = [event keyCode];
    
    //printf("%d", keycode);

    if ([event modifierFlags] & NSCommandKeyMask) {
        switch ([event keyCode]) {
            // Command + R でリロード
            case 15:
                [self reload];
                break;
        }
    }
}
@end
