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
    // 履歴を保存する
    [self setMaintainsBackForwardList:YES];
    
    // とりあえず Apple を開いてみる
    NSURL *url = [NSURL URLWithString:@"http://www.apple.com"];
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    [[self mainFrame] loadRequest:req];
    
    
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
            // 'Command' + 'R' でリロード
            case 15:
                [[self mainFrame] reload];
                break;
                
            // 'Command' + ']' で進む
            case 30:
                [self goForward];
                break;

            // 'Command' + '[' で戻る
            case 33:
                [self goBack];
                break;
        }
    }
}
@end
