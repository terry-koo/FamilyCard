//
//  BloodSheetView.swift
//  FamilyCard
//
//  Created by Terry Koo on 2022/10/09.
//

import SwiftUI

struct BloodSheetView: View {
    @Binding var person: Person
    
    var body: some View {
        VStack {
            HStack {
                Text("혈액형을 선택해주세요")
                    .font(.system(size: 20))
                    .padding(EdgeInsets(top: UIScreen.getHeight(32), leading: 0, bottom: UIScreen.getHeight(44), trailing: 0))
                Spacer()
            }
            Button(action: {
                print("A형")
                person.blood = "A형"
            }, label: {
                HStack {
                    Text("A형")
                    Spacer()
                    Image(systemName: "checkmark")
                        .opacity(person.blood == "A형" ? 1 : 0)
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: UIScreen.getHeight(16), trailing: 0))
                .foregroundColor(Color("ActiveColor1"))
            })
            
            
            DisableDividerView()
            
            Button(action: {
                print("B형")
                person.blood = "B형"
            }, label: {
                HStack {
                    Text("B형")
                    Spacer()
                    Image(systemName: "checkmark")
                        .opacity(person.blood == "B형" ? 1 : 0)
                }
                .padding(EdgeInsets(top: UIScreen.getHeight(16), leading: 0, bottom: UIScreen.getHeight(16), trailing: 0))
                .foregroundColor(Color("ActiveColor1"))
            })
            
            DisableDividerView()
            
            Button(action: {
                print("O형")
                person.blood = "O형"
            }, label: {
                HStack {
                    Text("O형")
                    Spacer()
                    Image(systemName: "checkmark")
                        .opacity(person.blood == "O형" ? 1 : 0)
                }
                .padding(EdgeInsets(top: UIScreen.getHeight(16), leading: 0, bottom: UIScreen.getHeight(16), trailing: 0))
                .foregroundColor(Color("ActiveColor1"))
            })
            
            DisableDividerView()
            
            Button(action: {
                print("AB형")
                person.blood = "AB형"
            }, label: {
                HStack {
                    Text("AB형")
                    Spacer()
                    Image(systemName: "checkmark")
                        .opacity(person.blood == "AB형" ? 1 : 0)
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

//struct BloodSheetView_Previews: PreviewProvider {
//    static var previews: some View {
//        BloodSheetView()
//    }
//}
