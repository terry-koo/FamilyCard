//
//  TitleDetailView.swift
//  FamilyCard
//
//  Created by Terry Koo on 2022/10/08.
//

import SwiftUI

struct TitleDetailView: View {
    var title: String
    var detail: String
    var option: String?
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(title)
                    .font(.system(size: 17, weight: .semibold))
                    .foregroundColor(.gray)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: UIScreen.getHeight(10), trailing: 0))
                Spacer()
            }
            HStack {
                Text(detail)
                    .font(.system(size: 22, weight: .regular))
                if let option = option {
                    Text(option)
                        .font(.system(size: 22, weight: .regular))
                        .padding(EdgeInsets(top: 0, leading: UIScreen.getWidth(22), bottom: 0, trailing: 0))
                }
            }
        }
    }
}

struct TitleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TitleDetailView(title: "이름", detail: "륑다")
    }
}
