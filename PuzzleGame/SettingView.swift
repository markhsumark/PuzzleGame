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
    var body: some View {
        VStack{
            Label("", systemImage: "key")
                .contextMenu{
                    Toggle("Put into you backbag", isOn: $isPwd)
                }
                TextField("Your name", text: $pwd , prompt: Text("text"))
                    .padding()
        }
    }
}

//struct Setting_Previews: PreviewProvider {
//    static var previews: some View {
//        Setting()
//    }
//}

