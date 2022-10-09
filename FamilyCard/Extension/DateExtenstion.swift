//
//  DateExtenstion.swift
//  FamilyCard
//
//  Created by Terry Koo on 2022/10/09.
//

import Foundation

extension Date {
    func toCustomBirthDayFormat() -> String {
        DateFormatter.customFormatter.string(for: self) ?? ""
    }
}
