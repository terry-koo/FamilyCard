//
//  MyPageView.swift
//  FamilyCard
//
//  Created by Terry Koo on 2022/10/09.
//

import SwiftUI

struct MyPageView: View {
    @State var editMode: Bool = false
    @State var name: String = ""
    @State var genderSheet: Bool = false
    @State var birthSheet: Bool = false
    @State var rhSheet: Bool = false
    @State var bloodSheet: Bool = false
    
    @State var me: Person = Person.me
    
    var body: some View {
        // MARK: - 보기 모드
            VStack {
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Text("닫기")
                            .foregroundColor(.gray)
                    })
                   Spacer()
                           Button(action: {
                        
                    }, label: {
                        Text("저장")
                    })
                }
                .opacity(editMode == true ? 1 : 0)
                .animation(.easeOut)
                
                HStack {
                    if editMode == true {
                        TextField(me.name, text: $name)
                            .font(.system(.largeTitle))
                    } else {
                        Text("린다")
                            .font(.system(.largeTitle))
                    }
                    Spacer()
                    // TODO: - 배지 구현 필요
                    CapsuleBadgeView(who: "어머니")
                }
                .frame(height: UIScreen.getHeight(45))
                .padding(EdgeInsets(top: 0, leading: 0, bottom: UIScreen.getHeight(44), trailing: 0))
                
                HStack {
                    ModifiableTitleDetailView(title: "성별", detail: me.gender, editMode: $editMode) {
                        genderSheet.toggle()
                    }
                    Spacer()
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: UIScreen.getHeight(28), trailing: 0))
                HStack {
                    ModifiableTitleDetailView(title: "생일", detail: me.birth.toCustomBirthDayFormat(), editMode: $editMode) {
                        birthSheet.toggle()
                    }
                    Spacer()
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: UIScreen.getHeight(28), trailing: 0))
                HStack {
                    ModifiableTitleDetailView(title: "혈액형", detail: me.rh, editMode: $editMode) {
                        rhSheet.toggle()
                    }
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: UIScreen.getWidth(22)))
                    ModifiableTitleDetailView(title: " ", detail: me.blood, editMode: $editMode) {
                        bloodSheet.toggle()
                    }

                    Group {
                        Spacer()
                        Spacer()
                    }
                    .layoutPriority(0)
                        
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: UIScreen.getHeight(32), trailing: 0))
                
                Spacer()
                Button(action: {
                    editMode.toggle()
                }, label: {
                    Text("임시버튼")
                })
            }
            .padding(.horizontal, UIScreen.getWidth(16))
            .sheet(isPresented: $genderSheet) {
                GenderSheetView(person: $me)
                .padding(.horizontal, UIScreen.getWidth(16)) 
                .presentationDetents([.medium])
            }
            .sheet(isPresented: $birthSheet) {
                BirthSheetView()
                    .padding(.horizontal, UIScreen.getWidth(16))
                    .presentationDetents([.medium])
            }
            .sheet(isPresented: $rhSheet) {
                RhSheetView(person: $me)
                    .padding(.horizontal, UIScreen.getWidth(16))
                    .presentationDetents([.medium])
            }
            .sheet(isPresented: $bloodSheet) {
                BloodSheetView(person: $me)
                    .padding(.horizontal, UIScreen.getWidth(16))
                    .presentationDetents([.medium])
            }
        
    }
}

struct MyPageView_Previews: PreviewProvider {
    static var previews: some View {
        MyPageView()
    }
}
