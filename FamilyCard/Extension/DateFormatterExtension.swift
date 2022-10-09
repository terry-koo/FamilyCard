//
//  DateFormatterExtension.swift
//  FamilyCard
//
//  Created by Terry Koo on 2022/10/09.
//

import Foundation

extension DateFormatter {
    static var customFormatter: Formatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy.MM.dd"
        return formatter
    }
}
