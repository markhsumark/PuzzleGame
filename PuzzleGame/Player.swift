//
//  Player.swift
//  PuzzleGame
//
//  Created by 徐易中 on 2021/11/28.
//

import SwiftUI

struct Player: View {
    @State private var p1_width: CGFloat = 150.0
    @State private var p2_width: CGFloat = 150.0
    @Binding var img_index: Int
    @State private var isEdit: Bool = false
    var body: some View {
        List{
            TabView(selection: $img_index){
                Image("peter1")
                    .resizable()
                    .scaledToFit()
                    .frame(width : p1_width)
                    .padding(30)
                    .overlay(Text("Peter_1"), alignment: .top)
                Image("peter2")
                    .resizable()
                    .scaledToFit()
                    .frame(width : p2_width)
                    .padding(30)
                    .overlay(Text("Peter_2"), alignment: .top)
            }
            .tabViewStyle(.page)
            .frame(height : 400)
            .padding()
            Toggle("Edit Picture:", isOn: $isEdit)
            if isEdit {
                Form{
                    SliderView(controll_value: $p1_width, sliderName: "p1 size", max_value: CGFloat(50.0), min_value: CGFloat(200.0))
                    SliderView(controll_value: $p2_width, sliderName: "p2 size", max_value: CGFloat(50.0), min_value: CGFloat(200.0))
                }
            }
        }
        
    }
}

//struct Player_Previews: PreviewProvider {
//    static var previews: some View {
//        Player()
//    }
//}
