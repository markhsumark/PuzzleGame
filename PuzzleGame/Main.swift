//
//  Main.swift
//  PuzzleGame
//
//  Created by 徐易中 on 2021/11/25.
//

import SwiftUI

struct Main: View {
    var body: some View {
        TabView{
            Game1()
                .tabItem {
                    Label("Adventure", systemImage: "map")
                }
            Setting()
                .tabItem {
                    Label("Adventure", systemImage: "map")
                }
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
