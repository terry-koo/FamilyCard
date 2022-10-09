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
                .frame(width: UIScreen.main.bounds.size.width * 0.9, height: 60)
                .foregroundColor(.blue)
            Text(text)
                .foregroundColor(.white)
        }
        
    }
}

struct ConfirmView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmView(text: "다음")
    }
}
