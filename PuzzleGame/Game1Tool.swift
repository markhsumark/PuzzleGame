//
//  HomeTool.swift
//  PuzzleGame
//
//  Created by 徐易中 on 2021/11/25.
//

import SwiftUI

struct Game1Tool: View {
    @Binding var it_y: CGFloat
    @Binding var is_y: CGFloat
    @Binding var not_y: CGFloat
    @Binding var a_y: CGFloat
    @Binding var game_y: CGFloat
    @State private var selectedIndex: Int = 0
    @State private var sliderValue: CGFloat  = 0
    let wordList = ["IT", "IS", "NOT", "A", "GAME"]
    var body: some View {
        VStack{
            Picker(selection: $selectedIndex) {
                ForEach(0 ..< 5){i in
                    Text(wordList[i])
                }
            } label:{
                Text("")
            }
            .pickerStyle(.segmented)
            .onChange(of: selectedIndex) { newValue in
                switch newValue {
                case 0:
                    sliderValue = it_y
                case 1:
                    sliderValue = is_y
                case 2:
                    sliderValue = not_y
                case 3:
                    sliderValue = a_y
                case 4:
                    sliderValue = game_y
                default:
                    break
                }
            }
            Slider(value: $sliderValue, in: -150...150)
                .onAppear{
                    sliderValue = it_y
                }
                .onChange(of:sliderValue) { newValue in
                    switch selectedIndex {
                    case 0:
                        it_y = newValue
                    case 1:
                        is_y = newValue
                    case 2:
                        not_y = newValue
                    case 3:
                        a_y = newValue
                    case 4:
                        game_y = newValue
                    default:
                        break
                    }
                }
        }
    }
}

//struct HomeTool_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeTool()
//    }
//}
