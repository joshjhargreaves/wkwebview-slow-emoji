//
//  ViewController.swift
//  TestWKWebView
//
//  Created by jhargreaves4 on 6/14/17.
//  Copyright © 2017 jhargreaves4. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        let htmlPath = Bundle.main.path(forResource: "index", ofType: "html")
        let htmlUrl = URL(fileURLWithPath: htmlPath!, isDirectory: false)
        webView.loadFileURL(htmlUrl, allowingReadAccessTo: htmlUrl)
//        webView.loadHTMLString("<html><body style=\"padding-top: 50; font-size: 500%\"><p contenteditable=\"true\">Hello!</p></body></html>", baseURL: nil)
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

