//
//  ViewController.swift
//  CoreGraphicsExample
//
//  Created by Saumeel Gajera on 10/11/16.
//  Copyright © 2016 Saumeel Gajera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var drawView : DrawView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("in view did load")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func clear(sender: AnyObject) {
        drawView.lines = []
        drawView.setNeedsDisplay()  
    }
    
    @IBAction func changeColor(sender: UIButton){
        
        if sender.titleLabel?.text == "Red" {
            drawView._color = UIColor.redColor()
            print("red")
        }else if sender.titleLabel?.text == "Black" {
            drawView._color = UIColor.blackColor()
            print("black")
        }
    }
    
}

