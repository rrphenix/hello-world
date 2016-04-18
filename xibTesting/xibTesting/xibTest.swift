//
//  xibTest.swift
//  xibTesting
//
//  Created by Ryan Pasecky on 4/17/16.
//  Copyright © 2016 Ryan Pasecky. All rights reserved.
//

import UIKit

class xibTest: UIView {

    @IBOutlet var pic: UIImageView!
    
    @IBOutlet var button1: UIButton!

}

protocol UIViewLoading {}
extension UIView : UIViewLoading {}

extension UIViewLoading where Self : UIView {
    
    // note that this method returns an instance of type `Self`, rather than UIView
    static func loadFromNib() -> Self {
        let nibName = "\(self)".characters.split{$0 == "."}.map(String.init).last!
        let nib = UINib(nibName: nibName, bundle: nil)
        return nib.instantiateWithOwner(self, options: nil).first as! Self
    }
    
}
