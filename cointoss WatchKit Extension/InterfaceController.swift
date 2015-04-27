//
//  InterfaceController.swift
//  Coin Toss WatchKit Extension
//
//  Created by Christopher Alan on 2/13/15.
//  Copyright (c) 2015 Christopher Alan. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet var imageGroup: WKInterfaceGroup!
    
    

    @IBAction func tapped() {
        
        var countdown = NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: Selector("complete"), userInfo: nil, repeats: false)
        
        imageGroup.setBackgroundImageNamed("coin")
        imageGroup.startAnimating()
        
        
    }
    
    func complete() {
        
        var random = arc4random_uniform(2)
        println("\(random)")
        
        imageGroup.stopAnimating()
        
        if random == 0 {
            
            imageGroup.setBackgroundImageNamed("coin0.png")
        } else {
            
            imageGroup.setBackgroundImageNamed("coin15.png")
        }
        
        
        
        
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
}
