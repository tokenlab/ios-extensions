//
//  UITableViewCell+SelectionColor.swift
//  Pan
//
//  Created by Eduardo Pinto on 05/04/17.
//  Copyright © 2017 Tokenlab. All rights reserved.
//

import UIKit

class SelectionBackgroundView: UIView {}

extension UITableViewCell {
    var selectionColor: UIColor? {
        get {
            return self.selectedBackgroundView?.backgroundColor
        }
        set {
            if let backgroundView = self.selectedBackgroundView as? SelectionBackgroundView {
                backgroundView.backgroundColor = newValue
            } else {
                let backgroundView = SelectionBackgroundView()
                backgroundView.backgroundColor = newValue
                self.selectedBackgroundView = backgroundView
            }
        }
    }
}
