//
//  Date+LongFormat.swift
//  Pan
//
//  Created by Eduardo Pinto on 26/04/17.
//  Copyright © 2017 Tokenlab. All rights reserved.
//

import Foundation

extension Date {
    var longFormatted: String {
        get {
            let weekDayFormatter = DateFormatter()
            weekDayFormatter.dateFormat = "EEEE"
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .long
            return weekDayFormatter.string(from: self).capitalized + ", " + dateFormatter.string(from: self)
        }
    }
}
