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
    NSString* characters = [event characters];
    unichar character = [characters characterAtIndex:0];
    
    //NSLog(@"%c", character);

    // command が押されている
    if ([event modifierFlags] & NSCommandKeyMask) {
        
        // shift が押されていない
        if (!([event modifierFlags] & NSShiftKeyMask)) {
            switch (character) {
                // 'Command' + 'r' or 'Command' + 'R' でリロード
                // shift は押してないので 'R' になるのは caps lock 時
                case 'r':
                case 'R':
                    [[self mainFrame] reload];
                    break;
                    
                // 'Command' + ']' で進む
                case ']':
                    [self goForward];
                    break;

                // 'Command' + '[' で戻る
                case '[':
                    [self goBack];
                    break;
            }
        }
        // shift が押されている (command + shift + ???)
        else {
        }
    }
}
@end
