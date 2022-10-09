//
//  BirthSheetView.swift
//  FamilyCard
//
//  Created by Terry Koo on 2022/10/09.
//

import SwiftUI

struct BirthSheetView: View {
    @State var date: Date = Date()
    
    var body: some View {
        VStack {
            HStack {
                Text("생일을 설정해주세요")
                    .font(.system(size: 20))
                Spacer()
            }
            .padding(EdgeInsets(top: UIScreen.getHeight(32), leading: 0, bottom: UIScreen.getHeight(44), trailing: 0))

            DatePicker("Please enter a date", selection: $date,
                       displayedComponents: .date)
            .datePickerStyle(WheelDatePickerStyle())
            .labelsHidden()
            .environment(\.locale, Locale(identifier: "ko_KR"))
            .environment(\.timeZone, TimeZone(abbreviation: "KST")!)
            .padding(EdgeInsets(top: 0, leading: 0, bottom: UIScreen.getHeight(44), trailing: 0))
            
            Button(action: {
                
            }, label: {
                ConfirmView(text: "완료")
            })
        }
        .padding(.horizontal, 16)
    }
}

struct BirthSheetView_Previews: PreviewProvider {
    static var previews: some View {
        BirthSheetView()
    }
}
