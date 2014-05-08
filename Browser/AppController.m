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

- (void)webView:(WebView *)sender didFinishLoadForFrame:(WebFrame *)frame
{
    
}

// 読み込み開始の通知
- (void)webView:(WebView *)sender didStartProvisionalLoadForFrame:(WebFrame *)frame
{
    // アドレスバーにURLを表示
    if (frame == [sender mainFrame]) {
        NSURLRequest *req = [[frame provisionalDataSource] request];
        NSString *url = [[req URL] absoluteString];
        [address setStringValue:url];
    }
}

// サイトのタイトルを取得したときの通知
- (void)webView:(WebView *)sender didReceiveTitle:(NSString *)title forFrame:(WebFrame *)frame
{
    // タイトルバーにタイトルを表示
	if (frame == [sender mainFrame]) {
		[window setTitle:title];
    }
}

@end
