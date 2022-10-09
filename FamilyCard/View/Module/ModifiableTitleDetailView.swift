//
//  ModifiableTitleDetailView.swift
//  FamilyCard
//
//  Created by Terry Koo on 2022/10/09.
//

import SwiftUI

struct ModifiableTitleDetailView: View {
    var title: String
    var detail: String
    @Binding var editMode: Bool
    var action: () -> Void
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(title)
                    .font(.system(size: 17, weight: .semibold))
                    .foregroundColor(.gray)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: UIScreen.getHeight(10), trailing: 0))
                Spacer()
            }
            Button(action: {
                action()
            }, label: {
                VStack {
                    HStack {
                        Text(detail)
                            .font(.system(size: 22, weight: .regular))
                            .foregroundColor(.black)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                            .opacity(editMode ? 1 : 0)
                            .animation(.easeOut)
                    }
                    Divider()
                        .foregroundColor(.gray)
                        .frame(height: 1)
                        .opacity(editMode ? 1 : 0)
                        .animation(.easeOut)
                }
            })
            .disabled(editMode ? false : true)
        }
    }
}

//struct ModifiableTitleDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        ModifiableTitleDetailView(title: "이름", detail: "링다", edit: true, action: {})
//    }
//}
