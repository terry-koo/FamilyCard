//
//  GenderView.swift
//  FamilyCard
//
//  Created by Terry Koo on 2022/10/08.
//

import SwiftUI

struct GenderView: View {
    @Binding var page: Int
    @State var username: String = "린다"
    var body: some View {
        VStack(alignment: .leading) {
            Text("성별을 선택해주세요")
                .font(.system(size: 28))
                .padding(.vertical, 40)
            TextField("이름", text: $username)
            Divider()
                .frame(height: 1)
                .background(Color.blue)
            Spacer()
        }
        .padding(.horizontal, 30)
    }
}

struct GenderView_Previews: PreviewProvider {
    static var previews: some View {
        GenderView(page: .constant(1))
    }
}
