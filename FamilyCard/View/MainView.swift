//
//  MainView().swift
//  FamilyCard
//
//  Created by Terry Koo on 2022/10/08.
//

import SwiftUI

struct MainView: View {
    @State var page: Int = 0
    @State var name: String = ""
    @State var gender: String = ""
    
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
                Spacer()
            }
            switch page {
            case 0:
                NameView(page: $page, name: $name)
            case 1:
                GenderView(page: $page,name: $name, gender: $gender)
            case 2:
                BirthDayView(page: $page, gender: $gender, name: $name)
            default:
                EmptyView()
            }
        }
    }
}

struct MainView___Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
