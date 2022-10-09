//
//  GenderSheetView.swift
//  FamilyCard
//
//  Created by Terry Koo on 2022/10/09.
//

import SwiftUI

struct GenderSheetView: View {
    @Binding var person: Person


    var body: some View {
        VStack {
            HStack {
                Text("성별을 선택해주세요")
                    .font(.system(size: 20))
                    .padding(EdgeInsets(top: UIScreen.getHeight(32), leading: 0, bottom: UIScreen.getHeight(44), trailing: 0))
                Spacer()
            }
            Button(action: {
                print("남성")
                person.gender = "남성"
            }, label: {
                HStack {
                    Text("남성")
                    Spacer()
                    Image(systemName: "checkmark")
                        .opacity(person.gender == "남성" ? 1 : 0)
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: UIScreen.getHeight(16), trailing: 0))
                .foregroundColor(Color("ActiveColor1"))
            })
            
            
            DisableDividerView()
            
            Button(action: {
                print("여성")
                person.gender = "여성"
            }, label: {
                HStack {
                    Text("여성")
                    Spacer()
                    Image(systemName: "checkmark")
                        .opacity(person.gender == "여성" ? 1 : 0)
                }
                .padding(EdgeInsets(top: UIScreen.getHeight(16), leading: 0, bottom: 0, trailing: 0))
                .foregroundColor(Color("ActiveColor1"))
            })
            
            Spacer()
            Button(action: {
                
            }, label: {
                ConfirmView(text: "완료")
            })

        }
    }
}

//struct GenderSheetView_Previews: PreviewProvider {
//    static var previews: some View {
//        GenderSheetView(gender: .constant("남성"))
//    }
//}
