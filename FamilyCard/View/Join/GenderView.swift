//
//  GenderView.swift
//  FamilyCard
//
//  Created by Terry Koo on 2022/10/08.
//

import SwiftUI

struct GenderView: View {
    enum FocusField: Hashable {
        case field
    }
    
    @Binding var page: Int
    @Binding var name: String
    @Binding var gender: String
    @FocusState var focusedField: FocusField?
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("성별을 선택해주세요")
                .font(.system(size: 28, weight: .bold))
                .padding(EdgeInsets(top: UIScreen.getHeight(22), leading: 0, bottom: UIScreen.getHeight(44), trailing: 0))
            
            HStack {
                BadgeView(text: "남성",width: 88, height: 46, bindingGender: $gender)
                    .onTapGesture {
                        gender = "남성"
                    }
                BadgeView(text: "여성",width: 88, height: 46, bindingGender: $gender)
                    .onTapGesture {
                        gender = "여성"
                    }
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: UIScreen.getHeight(66), trailing: 0))
            
            Text("이름")
                .foregroundColor(Color("DisableText"))
            TextField("이름", text: $name)
                .focused($focusedField, equals: .field)
            if focusedField == .field {
                ActiveDividerView()
            } else {
                DisableDividerView()
            }
            Spacer()
        }
        .padding(.horizontal, 16)
        
        ZStack {
            Spacer()
            // 버튼
            if !gender.isEmpty && focusedField != .field {
                VStack {
                    Button(action: {
                        page += 1
                    }, label: {
                        ConfirmView(text: "다음")
                    })
                }
            }
        }
        .padding(.horizontal, 16)
    }
}
//
//struct GenderView_Previews: PreviewProvider {
//    static var previews: some View {
//        GenderView(page: .constant(1))
//    }
//}
