//
//  ViewController.swift
//  WebViewDemo
//
//  Created by Sgmedical on 2016/10/13.
//  Copyright © 2016年 Sgmedical. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tHTTP: UITextField!
    @IBOutlet weak var tWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func connectAction(_ sender: UIButton) {
        let vlen: Int? = tHTTP.text?.characters.count
        if vlen != nil {
            let urlLink = NSURL(string: tHTTP.text!)
            let urlreq = NSURLRequest(url: urlLink! as URL)
            tWebView.loadRequest(urlreq as URLRequest)
            
        }
    }

}

