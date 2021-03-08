//
//  UITextFieldPadding.swift
//  MovieKit
//
//  Created by IG_Se7enzZ on 3/6/21.
//

import UIKit

class UITextFieldPadding: UITextField {
    
    // Whatever you like
    var padding: UIEdgeInsets!
    
    init(padding: UIEdgeInsets) {
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.padding = padding
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: .init(top: 0, left: scale(value: 20), bottom: 0, right: scale(value: 20)))
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
}
