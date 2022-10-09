//
//  BadgeView.swift
//  FamilyCard
//
//  Created by Terry Koo on 2022/10/08.
//

import SwiftUI

struct BadgeView: View {
    var text: String
    var width: CGFloat
    var height: CGFloat
    @Binding var bindingGender: String
    
    
    var body: some View {
        if text == bindingGender {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: width, height: height)
                    .foregroundColor(Color("ActiveColor1"))
                Text(text)
                    .foregroundColor(Color("ActiveColor2"))
            }
        } else {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: width, height: height)
                    .foregroundColor(Color("DisableCapsule"))
                Text(text)
                    .foregroundColor(Color("DisableText"))
            }
        }
     }
}

struct BadgeView_Previews: PreviewProvider {
    static var previews: some View {
        BadgeView(text: "남성", width: 50, height: 30, bindingGender: .constant("남성"))
    }
}
