//
//  InternetDetailViewController.swift
//  Juan_CSP
//
//  Created by Dela Cruz, Juan on 11/29/17.
//  Copyright © 2017 Dela Cruz, Juan. All rights reserved.
//

import UIKit
import WebKit
public class InternetDetailViewController : UIViewController{
    @IBOutlet weak var textView: UILabel!
    @IBOutlet weak var wWebView: UIWebView!
    var detailAddress: String?
    {
        didSet
        {
            configureDetailView()
        }
    }
    var detailText : String?{
        didSet
        {
            configureDetailView()
        }
    }
    private func configureDetailView() -> Void{
        if detailAddress != nil
        {
            if let currentWebView = wWebView{
                let currentURL = URL(string: detailAddress!)
                let currentWebRequest = URLRequest(url: currentURL!)
                currentWebView.load(currentWebRequest)
            }
        }
        else{
            if let currentWebView = wWebView{
                let currentURL = URL(string: "https://www")
                currentWebView.load(URLRequest(url: currentURL!))
            }
        }
        if detailText != nil{
            if let currentText = textView{
                currentText.text = detailText
            }
        }
        else{
            if let currentText = textView{
                currentText.text = "Jesus"
            }
        }
    }
    override public func viewDidLoad()
    {
        super.viewDidLoad()
    }
    private func setup() -> Void
    {
        
    }
}
