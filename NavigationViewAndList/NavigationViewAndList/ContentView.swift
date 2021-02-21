//
//  ContentView.swift
//  NavigationViewAndList
//
//  Created by KRENGLSEAN on 2021/02/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack(spacing: 20) {
                Button("Button") {
                    print("Button1")
                }
                Button(action: { print("Button2") }, label: {
                    Text("Button")
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
                })
                Button(action: { print("Button3") }) {
                    Circle()
                        .stroke(lineWidth: 2)
                        .frame(width: 80, height: 80)
                        .overlay(Text("Button"))
                }
                .accentColor(.green)
            }
            
            HStack(spacing: 20) {
                Button(action: { print("Button1")}, label: {
                    Image(systemName: "swift")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 120, height: 120)
                })
                .buttonStyle(PlainButtonStyle())
                
                Button(action: { print("Button2") }, label: {
                    Image(systemName: "play.circle")
                        .imageScale(.large)
                        .font(.largeTitle)
                })
            }.padding()
            
            VStack(spacing: 30) {
                Button("DefaultButtonStyle") {}
                    .buttonStyle(DefaultButtonStyle())
                
                Button("BorderlessButtonStyle") {}
                    .buttonStyle(BorderlessButtonStyle())
                
                Button("PlainButtonStyle") {}
                    .buttonStyle(PlainButtonStyle())
            }
            
            HStack {
                Image(systemName: "person.circle").imageScale(.large)
                    .onTapGesture {
                        print("onTapGesture")
                    }
                Button(action: { print("버튼") }, label: {
                    Image(systemName: "person.circle").imageScale(.large)
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
