//
//  DateString.swift
//  card-expenses
//
//  Created by Luciano Bohrer on 10/06/2020.
//  Copyright © 2020 Luciano Bohrer. All rights reserved.
//
import Foundation

extension Date {
    func string() -> String {
        let df = DateFormatter()
        df.dateFormat = "yyyy-MM-dd hh:mm:ss"
        return df.string(from: self)
    }
}
