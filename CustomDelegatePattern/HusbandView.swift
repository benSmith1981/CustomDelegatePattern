//
//  HusbandView.swift
//  CustomDelegatePattern
//
//  Created by Ben Smith on 02/06/2017.
//  Copyright © 2017 Ben Smith. All rights reserved.
//

import UIKit

class HusbandView: UIView {

    var wifeDelegate: CallWifeDelegate!

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    @IBAction func callWife(_ sender: AnyObject) {
        wifeDelegate.didArriveAtBar(message: "Hi honey at bar")
    }

}
