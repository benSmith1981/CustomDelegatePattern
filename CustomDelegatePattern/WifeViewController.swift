//
//  ViewController.swift
//  CustomDelegatePattern
//
//  Created by Ben Smith on 02/06/2017.
//  Copyright © 2017 Ben Smith. All rights reserved.
//

import UIKit


protocol CallWifeDelegate {
    func didArriveAtBar(message: String)
}

class WifeViewController: UIViewController, CallWifeDelegate, UITextFieldDelegate {

    @IBOutlet weak var textfieldOutlet: UITextField!
    @IBOutlet weak var husbandViewOutlet: HusbandView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        husbandViewOutlet.wifeDelegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func didArriveAtBar(message: String) {
        textfieldOutlet.text = message
    }
    
    // MARK: Text field
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return true
    }


}

