//
//  MainView().swift
//  FamilyCard
//
//  Created by Terry Koo on 2022/10/08.
//

import SwiftUI

struct MainView: View {
    // MARK: - 처음 접속 분기 처리
    //    @AppStorage("_isFirstLaunching") var isFirstLaunching: Bool = true
    
    @State var page: Int = 0
    @State var name: String = ""
    @State var gender: String = ""
    @State var blood: String = ""
    @State var rh: String = ""
    @State var date = Date()
    @State var selected: Int = 0
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "chevron.left")
                    .foregroundColor(.blue)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                    .onTapGesture {
                        if page > 0 {
                            page -= 1
                        } else {
                            return  
                        }
                    }
                    .opacity(page > 0 ? 1 : 0)
                Spacer()
            }
//            if isFirstLaunching == true {
                switch page {
                case 0:
                    NameView(page: $page, name: $name)
                        .transition(AnyTransition.scale.animation(.easeInOut))
                case 1:
                    GenderView(page: $page,name: $name, gender: $gender)
                        .transition(AnyTransition.scale.animation(.easeInOut))
                case 2:
                    BirthDayView(page: $page, gender: $gender, name: $name, date: $date, selected: $selected)
                        .transition(AnyTransition.scale.animation(.easeInOut))
                case 3:
                    // MARK: - 처음 접속 분기 처리
//                    BloodTypeView(page: $page, gender: $gender, name: $name, blood: $blood, rh: $rh, date: $date, isFirstLaunching: $isFirstLaunching)
                    BloodTypeView(page: $page, gender: $gender, name: $name, blood: $blood, rh: $rh, date: $date)
                        .transition(AnyTransition.scale.animation(.easeInOut))
                default:
                    EmptyView()
                }
//            }
        }
    }
}

struct MainView___Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
