//
//  MainWebView.m
//  Browser
//
//  Created by 131e55 on 5/3/14.
//
//

#import "MainWebView.h"

@implementation MainWebView

// 初期化
- (void)awakeFromNib
{
    // 履歴を保存する
    [self setMaintainsBackForwardList:YES];
}

// キーイベントを取得するために必要らしい
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
    NSString* characters = [event charactersIgnoringModifiers];
    unichar character = [characters characterAtIndex:0];
    
    // command が押されている
    if ([event modifierFlags] & NSCommandKeyMask) {

        // shift, control, alt, fn が押されていない
        if (! ([event modifierFlags] & NSShiftKeyMask) &&
            ! ([event modifierFlags] & NSControlKeyMask) &&
            ! ([event modifierFlags] & NSAlternateKeyMask) &&
            ! ([event modifierFlags] & NSFunctionKeyMask)) {

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
    }
}
@end
