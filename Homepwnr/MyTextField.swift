//
//  MyTextField.swift
//  Homepwnr
//
//  Created by Sebastian on 3/5/16.
//  Copyright © 2016 Sebastian. All rights reserved.
//

import UIKit

class MyTextField: UITextField {

    override func becomeFirstResponder() -> Bool {
        self.borderStyle = .Bezel
        return super.becomeFirstResponder()
    }
    
    override func resignFirstResponder() -> Bool {
        self.borderStyle = .RoundedRect
        return super.resignFirstResponder()
    }
}
