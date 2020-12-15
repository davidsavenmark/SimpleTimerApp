//
//  ViewController.swift
//  TimerApp_3
//
//  Created by David Sävenmark on 2020-12-15.
//  Copyright © 2020 David Sävenmark. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    var MyTimer = Timer()
    var TimerDisplayed = 0
    
    
    @IBOutlet weak var LabelView: UILabel!
    
    
    
    @IBAction func StartBTN(_ sender: Any) {
        
        MyTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(Action), userInfo: nil, repeats: true)
    }
    
    
    @IBAction func PauseBTN(_ sender: Any) {
        MyTimer.invalidate()
        
    }
    
    
    
    @IBAction func ResetBTN(_ sender: Any) {
        MyTimer.invalidate()
        TimerDisplayed = 0
        LabelView.text = "0"
        
    }
    
    
    @objc func Action(){
    TimerDisplayed += 1
        LabelView.text = String(TimerDisplayed)
        
        
    }
    

    override func viewDidLoad() {
        
        
        
    }


}

