//
//  ViewController.swift
//  EggTimer
//
//  Created by Niket Shah on 2/8/17.
//  Copyright © 2017 Niket Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    var time = 210
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
    }
    @IBAction func play(sender: AnyObject) {
         timer=NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("decreaseTimer"), userInfo: nil, repeats: true)
    }
    @IBAction func minusTen(sender: AnyObject) {
        if time > 10{
            time -= 10
            outputLabel.text=String(time)
        }
    }
    @IBAction func plusTen(sender: AnyObject) {
        time += 10
        outputLabel.text=String(time)
    }
    @IBAction func reset(sender: AnyObject) {
        time = 210
        outputLabel.text=String(time)
    }
    @IBOutlet var outputLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func decreaseTimer() {
        if time > 0{
            time -= 1
            outputLabel.text=String(time)
        }
        
        else{
            timer.invalidate()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

