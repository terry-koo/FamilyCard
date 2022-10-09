//
//  Human.swift
//  FamilyCard
//
//  Created by Terry Koo on 2022/10/09.
//

import Foundation

class Person {
    static var me: Person = Person(name: "린다", gender: "남자", birth: Date(), rh: "RH+", blood: "B")

    var name: String
    var gender: String
    var birth: Date
    var rh: String
    var blood: String
    
    init(name: String, gender: String, birth: Date, rh: String, blood: String) {
        self.name = name
        self.gender = gender
        self.birth = birth
        self.rh = rh
        self.blood = blood
    }
}
