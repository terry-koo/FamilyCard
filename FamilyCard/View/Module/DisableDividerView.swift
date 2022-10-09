//
//  DisableDividerView.swift
//  FamilyCard
//
//  Created by Terry Koo on 2022/10/09.
//

import SwiftUI

struct DisableDividerView: View {
    var body: some View {
        Divider()
            .frame(height: 1)
            .background(Color("DisableLine"))
    }
}

struct DisableDividerView_Previews: PreviewProvider {
    static var previews: some View {
        DisableDividerView()
    }
}
