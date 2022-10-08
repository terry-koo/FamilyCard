//
//  BloodTypeView.swift
//  FamilyCard
//
//  Created by Terry Koo on 2022/10/08.
//

import SwiftUI

struct BloodTypeView: View {
    @Binding var page: Int
    @Binding var gender: String
    @Binding var name: String
    @Binding var blood: String
    @Binding var rh: String
    @Binding var date: Date
    @State var sheet: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("혈액형을 선택해주세요")
                .font(.system(size: 28))
                .padding(.vertical, 40)
            HStack{
                VStack {
                    HStack {
                        if rh.isEmpty {
                            Text("RH식")
                        } else {
                            Text(rh)
                                .foregroundColor(.black)
                        }
                        Image(systemName: "chevron.right")
                        Spacer()
                    }
                    .foregroundColor(.gray)
                    .onTapGesture {
                        sheet.toggle()
                    }
                    // TODO: - Divider 크기 조절 필요
                    Divider()
                        .frame(height: 1)
                        .background(Color.black)
                }
                Spacer()
            }
            HStack {
                BadgeView(text: "A형", width: 78, height: 46, bindingGender: $blood)
                    .onTapGesture {
                        blood = "A형"
                    }
                BadgeView(text: "B형", width: 78, height: 46, bindingGender: $blood)
                    .onTapGesture {
                        blood = "B형"
                    }
                BadgeView(text: "O형", width: 78, height: 46, bindingGender: $blood)
                    .onTapGesture {
                        blood = "O형"
                    }
                BadgeView(text: "AB형", width: 78, height: 46, bindingGender: $blood)
                    .onTapGesture {
                        blood = "AB형"
                    }
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))

            TitleDetailView(title: "생일", detail: DateFormatter.customFormatter.string(for: date) ?? "")
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 40, trailing: 0))
            TitleDetailView(title: "성별", detail: gender)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 40, trailing: 0))
            TitleDetailView(title: "이름", detail: name)
 
            
            Spacer()
        }
        .padding(.horizontal, 30)
        .sheet(isPresented: $sheet, content: {
            VStack(alignment: .leading){
                Text("RH식 혈액형을 선택해주세요")
                    .font(.system(size: 20))
                    .padding(.vertical, 20)
                Button(action: {
                    rh = "RH+"
                    sheet.toggle()
                }, label: {
                    Text("RH+")
                        .foregroundColor(.black)
                        .padding(.vertical, 10)
                })
                Button(action: {
                    rh = "RH-"
                    sheet.toggle()
                }, label: {
                    Text("RH-")
                        .foregroundColor(.black)
                        .padding(.vertical, 10)
                })
                Button(action: {
                    rh = "모름"
                    sheet.toggle()
                }, label: {
                    Text("모름")
                        .foregroundColor(.black)
                        .padding(.vertical, 10)
                })
                Spacer()
                HStack{
                    Spacer()
                }
            }
            .padding(20)
            .presentationDetents([.fraction(0.3)])
        })
        
        ZStack {
            Spacer()
            // 버튼
            if !blood.isEmpty && !rh.isEmpty {
                VStack {
                    Button(action: {
                        page += 1
                    }, label: {
                        ConfirmView(text: "완료")
                    })
                }
            }
        }
    }
}

struct BloodTypeView_Previews: PreviewProvider {
    static var previews: some View {
        BloodTypeView(page: .constant(3), gender: .constant("남성"), name: .constant("륑다"), blood: .constant("A형"), rh: .constant("RH+"), date: .constant(Date()))
    }
}
