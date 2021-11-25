//
//  Setting.swift
//  PuzzleGame
//
//  Created by 徐易中 on 2021/11/25.
//

import SwiftUI

struct Setting: View {
    @State private var name = ""
    @State private var pwd = ""
    @State private var birthday: Date = Date()
    var body: some View {
        VStack{
//            Image()
            TextField("Your name", text: $name , prompt: Text("王小明"))
                .padding()
            TextField("Your favorate number", text: $pwd , prompt: Text("00000000"))
                .padding()
            DatePicker("Your birthday", selection: $birthday)
                .padding()
        }
    }
}

struct Setting_Previews: PreviewProvider {
    static var previews: some View {
        Setting()
    }
}
