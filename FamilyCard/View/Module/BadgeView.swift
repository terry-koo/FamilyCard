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
    
//    init(text: String, state: Binding<Bool>, bind){
//        self.text = text
//        self._state = state
//    }
    
    var body: some View {
        if text == bindingGender {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: width, height: height)
                    .foregroundColor(.blue)
                Text(text)
                    .foregroundColor(.white)
            }
        } else {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: width, height: height)
                    .foregroundColor(.gray)
                Text(text)
                    .foregroundColor(.white)
            }
        }
     }
}

//struct BadgeView_Previews: PreviewProvider {
//    static var previews: some View {
//        BadgeView(text: "남성", state: .constant(false))
//    }
//}
