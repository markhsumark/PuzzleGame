//
//  CompleteView.swift
//  PuzzleGame
//
//  Created by 徐易中 on 2021/12/2.
//

import SwiftUI

struct CompleteView: View {
    @Binding var showGame2 : Bool
    @Binding var showGame3 : Bool
    @Binding var showComplete : Bool
    
    var body: some View {
        Image("congratulations")
            .resizable()
            .scaledToFit()
        Button("Back"){
            showComplete = false
        }
    }
}


