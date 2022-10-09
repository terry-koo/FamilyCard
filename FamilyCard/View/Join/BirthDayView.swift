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
                .font(.system(size: 28))
                .padding(.vertical, 40)
            
            DatePicker("Please enter a date", selection: $date,
                       displayedComponents: .date)
            .datePickerStyle(WheelDatePickerStyle())
            .labelsHidden()
            .environment(\.locale, Locale(identifier: "ko_KR"))
            .environment(\.timeZone, TimeZone(abbreviation: "KST")!)
            .onChange(of: date, perform: { _ in
                selected += 1
            })
            
            if selected == 0 {
                Text("생일을 선택해주세요")
                    .foregroundColor(.gray)
                Divider()
                    .frame(height: 1)
                    .background(Color.gray)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 40, trailing: 0))
            } else {
                Text("\(date, formatter: DateFormatter.customFormatter)")
                    .foregroundColor(.black)
                Divider()
                    .frame(height: 1)
                    .background(Color.blue)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 40, trailing: 0))
            }
            
            TitleDetailView(title: "성별", detail: gender)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 40, trailing: 0))
            TitleDetailView(title: "이름", detail: name)
               
            Spacer()
        }
        .padding(.horizontal, 16)
        if selected > 0 {
            VStack {
                Button(action: {
                    page += 1
                }, label: {
                    ConfirmView(text: "다음")
                        .padding(.horizontal, UIScreen.getWidth(16))
                })
            }
        }
    }
}

struct BirthDayView_Previews: PreviewProvider {
    static var previews: some View {
        BirthDayView(page: .constant(3), gender: .constant("남자"), name: .constant("린다"), date: .constant(Date()), selected: .constant(1))
    }
}
