//
//  Date+Millis.swift
//  Pan
//
//  Created by Eduardo Pinto on 06/03/17.
//  Copyright © 2017 Tokenlab. All rights reserved.
//

import Foundation

extension Date {
    var millis: UInt64 {
        return UInt64(self.timeIntervalSince1970) * UInt64(1000)
    }
}
