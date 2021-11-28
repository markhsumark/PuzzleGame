//
//  Setting.swift
//  PuzzleGame
//
//  Created by 徐易中 on 2021/11/25.
//

import SwiftUI

struct Setting: View {
    @Binding var pwd : String
    @State private var birthday: Date = Date()
    var body: some View {
        VStack{
            Label("Your name(English):", systemImage: "key")
            TextField("Your name", text: $pwd , prompt: Text("XXX"))
                .padding()
            DatePicker("Your birthday", selection: $birthday)
                .padding()
                .datePickerStyle(.wheel)
        }
    }
}

//struct Setting_Previews: PreviewProvider {
//    static var previews: some View {
//        Setting()
//    }
//}

