//
//  HumanBadgeView.swift
//  FamilyCard
//
//  Created by Terry Koo on 2022/10/09.
//

import SwiftUI

struct CapsuleBadgeView: View {
    var who: String
    
    var body: some View {
        ZStack {
            Text(who)
                .font(.system(size: 17, weight: .bold))
                .foregroundColor(Color("ActiveColor2"))
                .padding(10)
                .background {
                    Capsule()
                        .foregroundColor(Color("ActiveColor1"))
                }
                
            
        }
    }
}

struct HumanBadgeView_Previews: PreviewProvider {
    static var previews: some View {
        CapsuleBadgeView(who: "어머니")
    }
}
