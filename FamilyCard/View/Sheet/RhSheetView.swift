//
//  RhSheetView.swift
//  FamilyCard
//
//  Created by Terry Koo on 2022/10/09.
//

import SwiftUI

struct RhSheetView: View {
    @Binding var person: Person
    
    var body: some View {
        VStack {
            HStack {
                Text("Rh식 혈액형을 선택해주세요")
                    .font(.system(size: 20))
                    .padding(EdgeInsets(top: UIScreen.getHeight(32), leading: 0, bottom: UIScreen.getHeight(44), trailing: 0))
                Spacer()
            }
            Button(action: {
                print("RH+")
                person.blood = "RH+"
            }, label: {
                HStack {
                    Text("RH+")
                    Spacer()
                    Image(systemName: "checkmark")
                        .opacity(person.blood == "RH+" ? 1 : 0)
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: UIScreen.getHeight(16), trailing: 0))
                .foregroundColor(Color("ActiveColor1"))
            })
            
            
            DisableDividerView()
            
            Button(action: {
                print("RH-")
                person.blood = "RH-"
            }, label: {
                HStack {
                    Text("RH-")
                    Spacer()
                    Image(systemName: "checkmark")
                        .opacity(person.blood == "RH-" ? 1 : 0)
                }
                .padding(EdgeInsets(top: UIScreen.getHeight(16), leading: 0, bottom: UIScreen.getHeight(16), trailing: 0))
                .foregroundColor(Color("ActiveColor1"))
            })
            
            DisableDividerView()
            
            Button(action: {
                print("모름")
                person.blood = "모름"
            }, label: {
                HStack {
                    Text("모름")
                    Spacer()
                    Image(systemName: "checkmark")
                        .opacity(person.blood == "모름" ? 1 : 0)
                }
                .padding(EdgeInsets(top: UIScreen.getHeight(16), leading: 0, bottom: UIScreen.getHeight(16), trailing: 0))
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

//struct RhSheetView_Previews: PreviewProvider {
//    static var previews: some View {
//        RhSheetView()
//    }
//}
