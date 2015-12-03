//
//  ViewController.swift
//  ios practice
//
//  Created by 森山 正悟 on 2015/12/03.
//  Copyright (c) 2015年 Opendoor Inc. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController, SFSafariViewControllerDelegate {

    @IBAction func openBtn(sender: AnyObject) {
        let _url:NSURL = NSURL(string: "https://www.google.co.jp/")!
        let _brow = SFSafariViewController(URL: _url, entersReaderIfAvailable: true)
        _brow.delegate = self
        presentViewController(_brow, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func safariViewControllerDidFinish(controller: SFSafariViewController) {
        print("close")
    }
}

