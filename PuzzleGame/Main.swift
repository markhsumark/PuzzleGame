//
//  Main.swift
//  PuzzleGame
//
//  Created by 徐易中 on 2021/11/25.
//

import SwiftUI

struct Main: View {
    @State private var pwd = ""
    @State private var img_id : Int = 0
    var body: some View {
        TabView{
            Game1(pwd: $pwd)
                .tabItem {
                    Label("Adventure", systemImage: "map")
                }
            Player(img_index: $img_id)
                .tabItem{
                    Label("Player Preference", systemImage: "person")
                }
            Setting(pwd: $pwd)
                .tabItem {
                    Label("Setting", systemImage: "gear")
                }
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
