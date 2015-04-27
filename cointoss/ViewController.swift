//
//  ViewController.swift
//  Coin Toss: Life's little decision maker.
//
//  Created by Christopher Alan on 2/13/15.
//  Copyright (c) 2015 Christopher Alan. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    @IBOutlet var coinButtonFrame: UIButton!
    
    @IBAction func coinButton(sender: AnyObject) {
        
        if coinButtonFrame.imageView?.isAnimating() == false {
            
            var countdown = NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: Selector("complete"), userInfo: nil, repeats: false)
            
            coinButtonFrame.imageView?.animationDuration = 0.5
            coinButtonFrame.imageView?.startAnimating()
        }
        
        label.hidden = true
        
    }
    
    
    
    func complete() {
        
        var random = arc4random_uniform(2)
        
        coinButtonFrame.imageView?.stopAnimating()
        
        if random == 0 {
            label.text = "HEADS!"
            coinButtonFrame.imageView?.image = UIImage(named: "coin0")
        } else {
            label.text = "TAILS!"
            coinButtonFrame.imageView?.image = UIImage(named: "coin15")
        }
        
        label.hidden = false
        
        
    }
    
    override func viewWillAppear(animated: Bool) {
        
        self.navigationController?.navigationBar.titleTextAttributes = [ NSFontAttributeName: UIFont(name: "RefrigeratorDeluxe", size: 21)!]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coinButtonFrame.imageView?.animationImages = [UIImage]()
        
        for var index = 0; index < 15; index++ {
            var frameName = String(format: "coin%01d", index)
            coinButtonFrame.imageView?.animationImages?.append(UIImage(named: frameName)!)
        }
        
        label.hidden = true
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

