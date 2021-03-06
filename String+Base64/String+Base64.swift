//
//  String+Base64.swift
//  Pan
//
//  Created by Eduardo Pinto on 06/03/17.
//  Copyright © 2017 Tokenlab. All rights reserved.
//

import Foundation

extension String {
    var base64: String? {
        return self.data(using: .utf8)?.base64EncodedString(options: [])
    }
}
