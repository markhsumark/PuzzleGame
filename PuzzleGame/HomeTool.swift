//
//  HomeTool.swift
//  PuzzleGame
//
//  Created by 徐易中 on 2021/11/25.
//

import SwiftUI

struct HomeTool: View {
    @Binding var it_y: CGFloat
    @Binding var is_y: CGFloat
    @Binding var not_y: CGFloat
    @Binding var a_y: CGFloat
    @Binding var game_y: CGFloat
    @State private var selectedIndex: Int = 0
    let wordList = ["IT", "IS", "NOT", "A", "GAME"]
//    let yList = [$it_y, $is_y, not_y, a_y, game_y.self]
    var body: some View {
            Picker(selection: $selectedIndex) {
                ForEach(0 ..< 5){i in
                    Text(wordList[i])
                }
            } label: {
                Text("選擇角色")
            }
            .pickerStyle(.segmented)
            
            Slider(value: $it_y, in: -150...150)
            Slider(value: $is_y, in: -150...150)
            Slider(value: $not_y, in: -150...150)
            Slider(value: $a_y, in: -150...150)
            Slider(value: $game_y, in: -150...150)
        
        //想做的
//        Slider(value: ylist[selectedIndex], in: -300...300)
        
    }
}

//struct HomeTool_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeTool()
//    }
//}
