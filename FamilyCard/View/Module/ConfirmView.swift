//
//  ConfirmView.swift
//  FamilyCard
//
//  Created by Terry Koo on 2022/10/08.
//

import SwiftUI

struct ConfirmView: View {
    var text: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .frame(height: UIScreen.getHeight(60))
                .foregroundColor(.black)
            Text(text)
                .font(.system(size: 22))
                .foregroundColor(.yellow)
        }
        
    }
}

struct ConfirmView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmView(text: "다음")
    }
}
