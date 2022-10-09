//
//  ActiveDividerView.swift
//  FamilyCard
//
//  Created by Terry Koo on 2022/10/09.
//

import SwiftUI

struct ActiveDividerView: View {
    var body: some View {
        Divider()
            .frame(height: 1)
            .background(Color("ActiveColor1"))
    }
}

struct ActiveDividerView_Previews: PreviewProvider {
    static var previews: some View {
        ActiveDividerView()
    }
}
