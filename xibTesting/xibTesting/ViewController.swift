//
//  ViewController.swift
//  xibTesting
//
//  Created by Ryan Pasecky on 4/17/16.
//  Copyright © 2016 Ryan Pasecky. All rights reserved.
//

import UIKit

var myView : xibTest?
class xibTestController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
            myView = xibTest.loadFromNib()
        myView?.frame = CGRect(x: 0, y: 0,
                               width: UIScreen.mainScreen().bounds.width,
                               height:UIScreen.mainScreen().bounds.height * 0.75)
            self.view.addSubview(myView!)
            myView!.button1.setTitle("Theodore Roosevelt", forState: .Normal)
            myView!.backgroundColor = UIColor.blueColor()
            myView!.pic.layer.borderWidth = 1.0
            myView!.pic.layer.masksToBounds = false
            myView!.pic.layer.borderColor = UIColor.whiteColor().CGColor
            myView!.pic.layer.cornerRadius = 13
            myView!.pic.layer.cornerRadius = myView!.pic.frame.size.height/2
            myView!.pic.clipsToBounds = true
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

