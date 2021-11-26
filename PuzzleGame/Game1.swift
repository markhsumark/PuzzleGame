//
//  ContentView.swift
//  PuzzleGame
//
//  Created by 徐易中 on 2021/11/25.
//

import SwiftUI
import Foundation
//35
struct Game1: View {
    @State private var colorState: Color = Color.red
    @State private var isCorrect: Bool = false
    @State private var it_y: CGFloat = Double.random(in: -150..<150)
    @State private var is_y: CGFloat = Double.random(in: -150..<150)
    @State private var not_y: CGFloat = Double.random(in: -20..<20)
    @State private var a_y: CGFloat = Double.random(in: -150..<150)
    @State private var game_y: CGFloat = Double.random(in: -150..<150)
    @State private var showGame1 = false
    @State private var showTool = false
    @State private var showIn = false
    var body: some View {
        
        VStack {
            Text("You have to know, it is 'not' a Game")
                .foregroundColor(.gray)
            Spacer()
            HStack{
                Button{
                    if isCorrect {
                        showGame1 = true
                    }
                }label:{
                    if showIn{
                        Text("IT")
                            .modifier(TextViewModifier(colorState: colorState, index_y: it_y))
                        Text("IS")
                            .modifier(TextViewModifier(colorState: colorState, index_y: is_y))
                        Text("NOT")
                            .modifier(TextViewModifier(colorState: colorState, index_y: not_y))
                        Text("A")
                            .modifier(TextViewModifier(colorState: colorState, index_y: a_y))
                        Text("GAME")
                            .modifier(TextViewModifier(colorState: colorState, index_y: game_y))
                    }
                }
                .fullScreenCover(isPresented: $showGame1){
                    Game2(showGame1: $showGame1)
                }
            }
            .padding(10)
            .border(colorState, width: 5)
            .frame(height:300)
            .animation(.spring(dampingFraction: 0.2), value: showIn)
            .onAppear{
                showIn = true
            }
            Spacer()
            DisclosureGroup{
                HomeTool(it_y: $it_y, is_y: $is_y, not_y: $not_y, a_y: $a_y, game_y: $game_y)
            }label:{
                Label("Tool", systemImage: "hammer.circle")
                    .foregroundColor(.black)
                    .font(.system(size: 30))
            }
            .padding()
        }
        .onChange(of: it_y){ newValue in
            check(it_y: it_y, is_y :is_y, not_y : not_y, a_y :a_y, game_y :game_y)
        }
        .onChange(of: is_y){ newValue in
            check(it_y: it_y, is_y :is_y, not_y : not_y, a_y :a_y, game_y :game_y)
        }
        .onChange(of: not_y){ newValue in
            check(it_y: it_y, is_y :is_y, not_y : not_y, a_y :a_y, game_y :game_y)
        }
        .onChange(of: a_y){ newValue in
            check(it_y: it_y, is_y :is_y, not_y : not_y, a_y :a_y, game_y :game_y)
        }
        .onChange(of: game_y) { newValue in
            check(it_y: it_y, is_y :is_y, not_y : not_y, a_y :a_y, game_y :game_y)
        }
    }
    func check(it_y: CGFloat, is_y :CGFloat, not_y: CGFloat, a_y:CGFloat, game_y:CGFloat) -> (){
        if it_y > -25.0 , it_y < 25.0 , is_y > -25.0 , is_y < 25.0 , a_y > -25.0 , a_y < 25.0 , game_y > -25.0 , game_y < 25.0 , not_y > 35.0 || not_y < -35.0 {
            colorState = Color.green
            isCorrect = true
        }
        else{
            colorState = Color.red
            isCorrect = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Game1()
    }
}

struct TextViewModifier: ViewModifier {
    var colorState:Color
    var index_y:CGFloat
    func body(content: Content) -> some View {
        content
            .foregroundColor(colorState)
            .font(.system(size: 27, weight: .bold))
            .offset(x: 0, y: index_y)
            .transition(.slide)
    }
}
