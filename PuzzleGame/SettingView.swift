//
//  Setting.swift
//  PuzzleGame
//
//  Created by 徐易中 on 2021/11/25.
//

import SwiftUI

struct SettingView: View {
    @Binding var pwd : String
    @Binding var isPwd : Bool
    @State private var birthday: Date = Date()
    @FocusState private var focusField : Bool
    var body: some View {
        ZStack{
            List{
                Label("", systemImage: "key")
                    .contextMenu{
                        Toggle("Set password", isOn: $isPwd)
                    }
                HStack{
                    TextField("", text: $pwd , prompt: Text("your password(number)"))
                        .textFieldStyle(.roundedBorder)
                        .keyboardType(.numberPad)
                        .focused($focusField)
                    Spacer()
                    Button("完成"){
                        focusField = false
                    }
                }
            }
        }
    }
}

//struct Setting_Previews: PreviewProvider {
//    static var previews: some View {
//        Setting()
//    }
//}

