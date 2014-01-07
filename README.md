DCWebView
========================

UIWebViewを使用する際に必要な機能を搭載した「DCWebView」クラスを作成しました。

##主な機能

1. ウェブビューの初期化と取得
2. ページのローディング中にアクティビティインジケータを表示
3. ページが画面の上下端でバウンスしないよう指定可能
4. その他 UIWebViewから継承されたサブクラス/プロパティの使用

##使用方法

```objective-c
// ウェブビュー生成
DCWebView *webView = [[DCWebView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];

// ビューに追加
[self.view addSubview:webView];

// 画面上下の端でバウンスしないよう指定
[webView bounces:NO];

// URL読み込み
[webView loadUrl:@"http://dolice.net/mb/" view:self.view];
{% endcodeblock %}
```
