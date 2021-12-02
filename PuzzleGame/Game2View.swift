//
//  Game1.swift
//  PuzzleGame
//
//  Created by 徐易中 on 2021/11/25.
//

import SwiftUI

struct Game2View: View {
    @Binding var showGame2: Bool
    @Binding var pwd : String
    @Binding var playerInfo : PlayerInfo
    @Binding var isPwd : Bool
    @State private var answer : String = ""
    @State private var systemIcon : String = "checkmark.circle.trianglebadge.exclamationmark"
    @State private var checkPwdColor = Color.red
    @State private var showGame3 = false
    
    var body: some View {
        VStack{
            DisclosureGroup{
                HStack{
                    TextField("", text: $answer , prompt: Text("password"))
                        .keyboardType(.numberPad)
                        .onChange(of: answer) { newValue in
                            if answer == pwd, isPwd , answer != ""{
                                checkPwdColor = Color.green
                                systemIcon = "checkmark.circle"
                            }
                            else{
                                checkPwdColor = Color.red
                                systemIcon = "checkmark.circle.trianglebadge.exclamationmark"
                            }
                        }
                    Label("", systemImage: systemIcon)
                        .foregroundColor(checkPwdColor)
                }
            }label:{
                Image("lootbox")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .background(.white)
                    .padding()
            }
            .padding()
            HStack{
                Button("Back"){
                    showGame2 = false
                }
                if checkPwdColor == Color.green{
                    Button("Game3!"){
                        showGame3 = true
                    }
                    .border(Color.black)
                }
            }
            .padding()
        }
        .fullScreenCover(isPresented: $showGame3) {
            Game3View(showGame2: $showGame2, showGame3 : $showGame3, imgInfo : $playerInfo.photoInfo)
        }

    }
    
}

//struct Game1_Previews: PreviewProvider {
//    static var previews: some View {
//        Game1()
//    }
//}
