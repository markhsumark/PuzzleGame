//
//  Player.swift
//  PuzzleGame
//
//  Created by 徐易中 on 2021/11/28.
//

import SwiftUI

struct PlayerView: View {
    enum Field {
        case Name
        case Intro
    }
    @Binding var playerInfo : PlayerInfo
    @State private var imgName = "peter1"
    @State private var photoInfo: Img_modifier = Img_modifier()
    @State private var img_index: Int = 0
    @State private var width: CGFloat = 150.0
    @State private var borderWidth: CGFloat = 5.0
    @State private var name : String = ""
    @State private var birthday : Date = Date()
    @State private var age : Int = 18
    @State private var inputColor : Color = Color.blue
    @State private var intro : String = "我是puzzlegame的玩家"
    @FocusState private var focusedField : Field?
    @FocusState private var focusedEditor : Bool
    var body: some View {
        Form{
            TabView(selection: $img_index){
                Image("peter1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: width)
                    .padding()
                    .overlay(Text("Peter_1"), alignment: .top)
                    .border(inputColor, width: borderWidth)
                Image("peter2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: width)
                    .padding()
                    .overlay(Text("Peter_2"), alignment: .top)
                    .border(inputColor, width: borderWidth)
            }
            .tabViewStyle(.page)
            .frame(height : 400)
            .padding()
            DisclosureGroup{
                
                SliderView(controll_value: $width, sliderName: "size of picture", max_value: CGFloat(50.0), min_value: CGFloat(200.0))
                SliderView(controll_value: $borderWidth, sliderName: "width of border", max_value: CGFloat(1.0), min_value: CGFloat(10.0))
                ColorPicker("Border color", selection: $inputColor)
            }label:{
                Text("Edit Picture:")
            }
            TextField("姓名", text: $name, prompt: Text("姓名"))
                .textFieldStyle(.roundedBorder)
                .focused($focusedField, equals: .Name)
                .textContentType(.givenName)
                .submitLabel(.done)
            
            Stepper("年齡： \(age) 歲", value: $age, in: 10...80)
            DatePicker("生日：", selection: $birthday,displayedComponents: .date)
            Button{
                focusedEditor = false
            }label:{
                Text("收起自介鍵盤")
                    .opacity(0.5)
            }
            TextEditor(text: $intro)
                .focused($focusedEditor)
        }
        .onDisappear {
            if img_index == 1{
                imgName = "peter2"
            }
            else if img_index == 0{
                imgName = "peter1"
            }
            photoInfo = Img_modifier(img_name: imgName, width: width, color: inputColor)
            playerInfo = PlayerInfo(name: name, birthday: birthday, age: age, photoInfo: photoInfo)
        }
        
    }
}

//struct Player_Previews: PreviewProvider {
//    static var previews: some View {
//        Player()
//    }
//}
