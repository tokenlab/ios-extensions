//
//  InterfaceBuilder.swift
//  Pan
//
//  Created by Daniele Boscolo on 02/03/17.
//  Copyright © 2017 Tokenlab. All rights reserved.
//

import UIKit

// MARK: - IBBorder

protocol IBBorder {
    var cornerRadius: CGFloat { get set }
    var borderWidth: CGFloat { get set }
    var borderColor: UIColor { get set }
}

extension UIView: IBBorder {
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return self.layer.cornerRadius
        }
        set {
            self.layer.cornerRadius = newValue
            self.layer.masksToBounds = newValue>0 && self.layer.shadowOpacity==0 ? true : false
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return self.layer.borderWidth
        }
        set {
            self.layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor {
        get {
            return UIColor(cgColor: self.layer.borderColor!)
        }
        set {
            self.layer.borderColor = newValue.cgColor
        }
    }
}
