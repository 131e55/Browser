//
//  AppController.m
//  Browser
//
//  Created by 131e55 on 5/7/14.
//
//

#import "AppController.h"

@implementation AppController

// 初期化
- (void)awakeFromNib
{
    // とりあえず Apple を開いてみる
    NSURL *url = [NSURL URLWithString:@"http://www.apple.com"];
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    [[webView mainFrame] loadRequest:req];
}

// ウィンドウのタイトルをセット
- (void)webView:(WebView *)sender didReceiveTitle:(NSString *)title forFrame:(WebFrame *)frame
{
	if (![frame parentFrame])
		[window setTitle:title];
}

@end
