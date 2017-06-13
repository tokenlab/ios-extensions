//
//  UIButton+ExtraAttributes.swift
//  Tokenlab
//
//  Created by Daniele Boscolo on 12/06/17.
//  Copyright © 2016 Tokenlab. All rights reserved.
//

// It's neccessary use of UIColor+ImageValue extension: https://github.com/tokenlab/ios-extensions/tree/master/UIColor%2BImageValue

import UIKit

extension UIButton {
    
    // MARK: - Selected

    @IBInspectable var selectedBackgroundColor: UIColor {
        get {
            return .clear
        }
        set {
            setBackgroundImage(newValue.imageValue, for: .selected)
        }
    }
    
    @IBInspectable var selectedTitleColor: UIColor {
        get {
            return titleColor(for: .selected) ?? .clear
        }
        set {
            setTitleColor(newValue, for: .selected)
        }
    }
    
    @IBInspectable var selectedTitle: String? {
        get {
            return title(for: .selected)
        }
        set {
            setTitle(newValue, for: .selected)
        }
    }
    
    // MARK: - Highlited
    
    @IBInspectable var highlightedBackgroundColor: UIColor {
        get {
            return .clear
        }
        set {
            setBackgroundImage(newValue.imageValue, for: .highlighted)
        }
    }
    
    @IBInspectable var highlightedTitleColor: UIColor {
        get {
            return titleColor(for: .highlighted) ?? .clear
        }
        set {
            setTitleColor(newValue, for: .highlighted)
        }
    }
    
    @IBInspectable var highlightedTitle: String? {
        get {
            return title(for: .highlighted)
        }
        set {
            setTitle(newValue, for: .highlighted)
        }
    }
    
    // MARK: - Disabled

    @IBInspectable var disabledBackgroundColor: UIColor {
        get {
            return .white
        }
        set {
            self.setBackgroundImage(newValue.imageValue, for: .disabled)
        }
    }
    
    @IBInspectable var disabledTitleColor: UIColor {
        get {
            return titleColor(for: .disabled) ?? .clear
        }
        set {
            setTitleColor(newValue, for: .disabled)
        }
    }
    
    @IBInspectable var disabledTitle: String? {
        get {
            return title(for: .disabled)
        }
        set {
            setTitle(newValue, for: .disabled)
        }
    }
}
