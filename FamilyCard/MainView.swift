//
//  MainView().swift
//  FamilyCard
//
//  Created by Terry Koo on 2022/10/08.
//

import SwiftUI

struct MainView: View {
    @State var page: Int = 0
    var body: some View {
        switch page {
        case 0:
            NameView(page: $page)
        case 1:
            GenderView(page: $page)
        default:
            NameView(page: $page)
        }
    }
}

struct MainView___Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
