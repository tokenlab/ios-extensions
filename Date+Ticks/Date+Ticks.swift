//
//  Date+Ticks.swift
//  Pan
//
//  Created by Eduardo Pinto on 03/03/17.
//  Copyright © 2017 Tokenlab. All rights reserved.
//

import Foundation

extension Date {
    var ticks: UInt64 {
        return UInt64((self.timeIntervalSince1970 + 62_135_596_800) * 10_000_000)
    }
    
    init(ticks: UInt64) {
        let millis = Double(ticks-621355968000000000)/10000000.0
        self = Date(timeIntervalSince1970: millis)
    }
}
