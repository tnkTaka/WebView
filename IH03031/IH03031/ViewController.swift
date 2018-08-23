//
//  ViewController.swift
//  IH03031
//
//  Created by administrator on 2018/07/13.
//  Copyright © 2018年 taka.tanaka. All rights reserved.
//
//http://210.166.154.135/ip3ss80503/index1.html

import UIKit

class ViewController: UIViewController,UITabBarDelegate,UIWebViewDelegate {
    
    @IBOutlet weak var myTabBar: UITabBar!
    @IBOutlet weak var myWebView: UIWebView!
    @IBOutlet weak var myIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // デリゲート設定
        myWebView.delegate = self
        myTabBar.delegate = self
        
        // WebPageをアプリっぽく見せる
        myWebView.scalesPageToFit = true
        myWebView.scrollView.bounces = false
        myWebView.scrollView.showsHorizontalScrollIndicator = false
        myWebView.scrollView.showsVerticalScrollIndicator = false
        
        myIndicator.isHidden=true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // WebViewロード開始1(読み込み前)
    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest,
                 navigationType: UIWebViewNavigationType) -> Bool { print()
        return true }
    
    // WebView読み込み開始2(読み込み開始)
    func webViewDidStartLoad(_ webView: UIWebView){
        myIndicator.startAnimating()
        myIndicator.isHidden = false
    }
    
    // WebView読み込み終了
    func webViewDidFinishLoad(_ webView: UIWebView){
        myIndicator.stopAnimating()
        myIndicator.isHidden=true
    }
    
    // WebViewエラー
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        let path:String = Bundle.main.path(forResource: "error", ofType: "html",inDirectory: "MyMemoryForSummer")!
        let url = URL(string: path)
        let urlRequest = URLRequest(url: url!)
        myWebView.loadRequest(urlRequest)
    }
    
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        switch item.tag {
        case 0:
            let path:String = Bundle.main.path(forResource: "page1", ofType: "html",inDirectory: "MyMemoryForSummer")!
            let url = URL(string: path)
            let urlRequest = URLRequest(url: url!)
            myWebView.loadRequest(urlRequest)
        case 1:
            let path:String = Bundle.main.path(forResource: "page2", ofType: "html",inDirectory: "MyMemoryForSummer")!
            let url = URL(string: path)
            let urlRequest = URLRequest(url: url!)
            myWebView.loadRequest(urlRequest)
        case 2:
            let url = URL(string: "http://210.166.154.135/ip3ss80503/index1.html")
            let urlRequest = URLRequest(url: url!)
            myWebView.loadRequest(urlRequest)
        case 3:
            let url = URL(string: "http://210.166.154.135/ip3ss80503/index2.html")
            let urlRequest = URLRequest(url: url!)
            myWebView.loadRequest(urlRequest)
        default:
            break
        }
    }
}

