//
//  NameView.swift
//  FamilyCard
//
//  Created by Terry Koo on 2022/10/08.
//

import SwiftUI

struct NameView: View {
    enum FocusField: Hashable {
      case field
    }
    
    @Binding var page: Int
    @Binding var name: String
    @FocusState var focusedField: FocusField?
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("이름을 입력해주세요")
                .font(.system(size: 28))
                .padding(.vertical, 40)
            HStack {
                TextField("이름", text: $name)
                    .focused($focusedField, equals: .field)
                    .keyboardType(.twitter)
                    .onAppear {
                        self.focusedField = .field
                    }
                if !name.isEmpty {
                    Button(action: {
                        name = ""
                    }, label: {
                        Image(systemName: "x.circle.fill")
                            .foregroundColor(.gray)
                    })
                }
            }
            Divider()
                .frame(height: 1)
                .background(Color.blue)
            Spacer()
        }
        .padding(.horizontal, 30)
        
        // 다음 버튼
        VStack {
            if focusedField == .field && !name.isEmpty {
                Button(action: {
                    page += 1
                }, label: {
                    Text("다음")
                        .padding(10)
                        .frame(width: UIScreen.main.bounds.size.width, height: 60)
                        .foregroundColor(.white)
                        .background(.blue)
                })
            }
        }
    }
}

//struct NameView_Previews: PreviewProvider {
//    static var previews: some View {
//        NameView(page: .constant(1)) 
//    }
//}
