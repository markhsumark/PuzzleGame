//
//  Main.swift
//  PuzzleGame
//
//  Created by 徐易中 on 2021/11/25.
//

import SwiftUI

struct MainView: View {
    @State private var pwd = ""
    @State private var isPwd = false
    @State private var playerInfo : PlayerInfo = PlayerInfo()
    var body: some View {
        TabView{
            Game1View(pwd: $pwd)
                .tabItem {
                    Label("Adventure", systemImage: "map")
                }
            PlayerView(playerInfo: $playerInfo)
                .tabItem{
                    Label("Player Preference", systemImage: "person")
                }
            SettingView(pwd: $pwd, isPwd: $isPwd)
                .tabItem {
                    Label("Setting", systemImage: "gear")
                }
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
