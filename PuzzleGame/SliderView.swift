//
//  SliderView.swift
//  PuzzleGame
//
//  Created by 徐易中 on 2021/11/28.
//

import SwiftUI

struct SliderView: View {
    @Binding var controll_value : CGFloat
    var sliderName : String
    var max_value : CGFloat
    var min_value : CGFloat
    var body: some View {
        HStack{
            Text("\(sliderName):")
                .frame(width: 100)
            Slider(value: $controll_value, in: max_value ... min_value)
        }
    }
}

