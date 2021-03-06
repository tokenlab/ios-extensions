//
//  SwiftyJSON+StringRepresentation.swift
//  Pan
//
//  Created by Eduardo Pinto on 06/04/17.
//  Copyright © 2017 Tokenlab. All rights reserved.
//

import Foundation
import SwiftyJSON

extension SwiftyJSON.JSON {
    var stringRepresentation: String {
        if let jsonRawString = rawString([.castNilToNSNull: true]) {
            return jsonRawString
        } else {
            return ""
        }
    }
}
