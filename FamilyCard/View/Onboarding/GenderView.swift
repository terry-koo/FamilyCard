//
//  GenderView.swift
//  FamilyCard
//
//  Created by Terry Koo on 2022/10/08.
//

import SwiftUI

struct GenderView: View {
    @Binding var page: Int
    @Binding var username: String
    @Binding var gender: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("성별을 선택해주세요")
                .font(.system(size: 28))
                .padding(.vertical, 40)
            HStack {
                BadgeView(text: "남성", bindingGender: $gender)
                    .onTapGesture {
                        gender = "남성"
                    }
                BadgeView(text: "여성", bindingGender: $gender)
                    .onTapGesture {
                        gender = "여성"
                    }
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
            Text("이름")
            TextField("이름", text: $username)
            Divider()
                .frame(height: 1)
                .background(Color.blue)
            Spacer()
        }
        .padding(.horizontal, 30)
        
        // 버튼
        if !gender.isEmpty {
            VStack {
                ConfirmView(text: "다음")
                    .onTapGesture {
                        print("다음")
                        page += 1
                    }
            }
        }
    }
} 
//
//struct GenderView_Previews: PreviewProvider {
//    static var previews: some View {
//        GenderView(page: .constant(1))
//    }
//}
