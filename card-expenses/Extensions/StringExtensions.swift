//
//  StringExtensions.swift
//  card-expenses
//
//  Created by Luciano Bohrer on 10/06/2020.
//  Copyright © 2020 Luciano Bohrer. All rights reserved.
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
