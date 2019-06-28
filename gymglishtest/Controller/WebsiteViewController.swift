//
//  WebsiteViewController.swift
//  gymglishtest
//
//  Created by Manu on 28/06/2019.
//  Copyright © 2019 Manu Marchand. All rights reserved.
//

import UIKit
import WebKit

class WebsiteViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {
    
    var website: Website!
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = website.getTitle()
        navigationItem.largeTitleDisplayMode = .never
        
        webView.uiDelegate = self
        webView.navigationDelegate = self
        
        let myURL = URL(string: website.getUrl())
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
    // MARK: - WKNavigationDelegate methods
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        activityIndicator.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
    }
}
