//
//  BirthDayView.swift
//  FamilyCard
//
//  Created by Terry Koo on 2022/10/08.
//

import SwiftUI

struct BirthDayView: View {
    enum FocusField: Hashable {
        case field
    }
    
    @Binding var page: Int
    @Binding var gender: String
    @Binding var name: String
    @FocusState var focusedField: FocusField?
    @Binding var date: Date
    @Binding var selected: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("생일을 입력해주세요")
                .font(.system(size: 28, weight: .bold))
                .padding(EdgeInsets(top: UIScreen.getHeight(22), leading: 0, bottom: UIScreen.getHeight(44), trailing: 0))
            
            DatePicker("Please enter a date", selection: $date,
                       displayedComponents: .date)
            .datePickerStyle(WheelDatePickerStyle())
            .labelsHidden()
            .environment(\.locale, Locale(identifier: "ko_KR"))
            .environment(\.timeZone, TimeZone(abbreviation: "KST")!)
            .onChange(of: date, perform: { _ in
                selected += 1
            })
            .padding(EdgeInsets(top: 0, leading: 0, bottom: UIScreen.getHeight(22), trailing: 0))
            
            if selected == 0 {
                Text("생일을 선택해주세요")
                    .foregroundColor(Color("DisableText"))
                    .font(.system(size: 22))
                DisableDividerView()
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 66, trailing: 0))
            } else {
                Text(date.toCustomBirthDayFormat())
                    .foregroundColor(Color("ActiveColor1"))
                    .font(.system(size: 22))
                ActiveDividerView()
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 66, trailing: 0))
            }
            
            TitleDetailView(title: "성별", detail: gender)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 32, trailing: 0))
            TitleDetailView(title: "이름", detail: name)
               
            Spacer()
        }
        .padding(.horizontal, 30)
        if selected > 0 {
            VStack {
                Button(action: {
                    page += 1
                }, label: {
                    ConfirmView(text: "다음")
                })
            }
            .padding(.horizontal, 16)
        }
        
//        ZStack {
//            Spacer()
//            // 버튼
//            if selected > 0 {
//                VStack {
//                    ConfirmView(text: "다음")
//                        .onTapGesture {
//                            print("다음")
//                            page += 1
//                        }
//                }
//            }
//        }
    }
}

struct BirthDayView_Previews: PreviewProvider {
    static var previews: some View {
        BirthDayView(page: .constant(3), gender: .constant("남자"), name: .constant("린다"), date: .constant(Date()), selected: .constant(1))
    }
}
