//
//  NameView.swift
//  FamilyCard
//
//  Created by Terry Koo on 2022/10/08.
//

import SwiftUI

struct NameView: View {
    enum FocusField: Hashable {
        case field
    }
    
    @Binding var page: Int
    @Binding var name: String
    @FocusState var focusedField: FocusField?
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("이름을 입력해주세요")
                .font(.system(size: 28, weight: .bold))
                .padding(EdgeInsets(top: UIScreen.getHeight(44), leading: 0, bottom: UIScreen.getHeight(44), trailing: 0))
            HStack {
                TextField("이름", text: $name)
                    .focused($focusedField, equals: .field)
                    .keyboardType(.twitter)
                    .onAppear {
                        self.focusedField = .field
                    }
                Button(action: {
                    name = ""
                }, label: {
                    Image(systemName: "x.circle.fill")
                        .foregroundColor(Color("GrayScale1"))
                        .opacity(name.isEmpty ? 0 : 1)
                })
            }
            ActiveDividerView()
            Spacer()
        }
        .padding(.horizontal, UIScreen.getWidth(16))
        
        // 다음 버튼
        VStack {
            if focusedField == .field && !name.isEmpty {
                Button(action: {
                    page += 1
                }, label: {
                    Text("다음")
                        .padding(10)
                        .frame(width: UIScreen.main.bounds.size.width, height: 60)
                        .foregroundColor(Color("ActiveColor2"))
                        .background(Color("ActiveColor1"))
                })
            }
        }
    }
}

//
//struct NameView_Previews: PreviewProvider {
//    static var previews: some View {
//        NameView(page: .constant(1),name: .constant("륑다"))
//    }
//}
