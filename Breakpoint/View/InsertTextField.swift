//
//  InsertTextField.swift
//  Breakpoint
//
//  Created by Massimiliano on 14/05/2019.
//  Copyright © 2019 Massimiliano Bonafede. All rights reserved.
//

import UIKit

class InsertTextField: UITextField {
    
    
    override func awakeFromNib() {
        let placeHolder = NSAttributedString(string: self.placeholder!, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        self.attributedPlaceholder = placeHolder
        super.awakeFromNib()
    }
    
    private var padding = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
    private var rectContainer = CGRect()
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
       // return rectContainer.inset(by: padding)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
       // return rectContainer.inset(by: padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
       // return rectContainer.inset(by: padding)
    }

    
    
    
}
