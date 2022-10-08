//
//  MainView().swift
//  FamilyCard
//
//  Created by Terry Koo on 2022/10/08.
//

import SwiftUI

struct MainView: View {
    @State var page: Int = 0
    @State var username: String = ""
    @State var gender: String = ""
    
    var body: some View {
        switch page {
        case 0:
            NameView(page: $page, username: $username)
        case 1:
            GenderView(page: $page,username: $username, gender: $gender)
        default:
            EmptyView()
        }
    }
}

struct MainView___Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
