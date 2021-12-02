//
//  Game3View.swift
//  PuzzleGame
//
//  Created by 徐易中 on 2021/12/2.
//

import SwiftUI

struct Game3View: View {
    @Binding var showGame2 : Bool
    @Binding var showGame3 : Bool
    @Binding var imgInfo : Img_modifier
    @State private var showAlert = false
    @State private var showComplete = false
    var body: some View {
        
        VStack {
            Text("Last Stage！Please click the button！")
            Button{
                showAlert = true
            }label:{
                Image(imgInfo.img_name)
                    .resizable()
                    .scaledToFit()
                    .frame(width: imgInfo.width)
                    .padding()
                    .overlay(Text("Peter_2"), alignment: .top)
                    .border(imgInfo.color, width: imgInfo.borderWidth)
            }
            .alert("Peter是帥哥嗎?", isPresented: $showAlert){
                Button("當然是！"){
                    showComplete = true
                }
            }
            Button("Back"){
                showGame3 = false
            }
        }
        .sheet(isPresented: $showComplete){
            CompleteView(showGame2: $showGame2, showGame3: $showGame3, showComplete: $showComplete)
        }
    }
}

