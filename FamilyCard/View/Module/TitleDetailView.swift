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
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.system(size: 17, weight: .semibold))
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
            Text(detail)
                .font(.system(size: 22, weight: .regular))
        }
    }
}

struct TitleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TitleDetailView(title: "이름", detail: "륑다")
    }
}
