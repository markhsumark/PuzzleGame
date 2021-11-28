//
//  Game1.swift
//  PuzzleGame
//
//  Created by 徐易中 on 2021/11/25.
//

import SwiftUI

struct Game2: View {
    @Binding var showGame2: Bool
    @Binding var pwd : String
    @State private var answer : String = ""
    var body: some View {
        VStack{
            
            TextField("", text: $answer , prompt: Text("password"))
            Button("Back"){
                if answer == pwd{
                    showGame2 = false
                }
            }
        }
        DisclosureGroup{
            Game2Tool()
        }label:{
            Label("Tool", systemImage: "hammer.circle")
                .foregroundColor(.black)
                .font(.system(size: 30))
        }
    }
    
}

//struct Game1_Previews: PreviewProvider {
//    static var previews: some View {
//        Game1()
//    }
//}
