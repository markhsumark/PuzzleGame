//
//  Game1Tool.swift
//  PuzzleGame
//
//  Created by 徐易中 on 2021/11/25.
//

import SwiftUI

struct Game2Tool: View {
    @State private var selectedIndex: Int = 0
    @State private var inputPwd: String = ""
    @State private var inputBirthday: Date = Date()
    @State private var inputColor = Color.white
    var body: some View {
        TextField("", text: $inputPwd, prompt: Text("1"))
        DatePicker("Birthday", selection: $inputBirthday,displayedComponents: .date)
        ColorPicker("Set the background color", selection: $inputColor)
    }
    
}

