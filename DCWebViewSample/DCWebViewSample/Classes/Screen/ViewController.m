//
//  ViewController.m
//  DCWebViewSample
//
//  Created by Dolice on 2014/01/05.
//  Copyright (c) 2014年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // ウェブビュー配置
    [self setWebView];
}

#pragma mark - Web View

// ウェブビュー配置
- (void)setWebView
{
    // ウェブビュー生成
    DCWebView *webView = [[DCWebView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    
    // 背景色指定 (初期値: [UIColor whiteColor])
    webView.backgroundColor = [UIColor whiteColor];
    
    // ピンチイン・ピンチアウトの可否を指定 (初期値: NO)
    webView.scalesPageToFit = NO;
    
    // 背景を透過するか (初期値: NO)
    webView.opaque = NO;
    
    // 画面上下の端でバウンスしないよう指定
    [webView bounces:NO];
    
    // ビューに追加
    [self.view addSubview:webView];
    
    // URL読み込み
    [webView loadUrl:@"http://dolice.net/mb/" view:self.view];
}

@end
