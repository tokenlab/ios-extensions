//
//  UIColor.swift
//  Pan
//
//  Created by Daniele Boscolo on 02/03/17.
//  Copyright © 2017 Tokenlab. All rights reserved.
//

import UIKit

public extension UIColor {
    
    public var imageValue: UIImage? {
        UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
        UIGraphicsGetCurrentContext()!.setFillColor(self.cgColor)
        UIGraphicsGetCurrentContext()!.fill(CGRect(x: 0, y: 0, width: 1, height: 1))
        let colorImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return colorImage
    }
}
