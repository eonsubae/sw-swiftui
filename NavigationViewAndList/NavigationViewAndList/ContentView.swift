//
//  ContentView.swift
//  NavigationViewAndList
//
//  Created by KRENGLSEAN on 2021/02/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let leadingItem = Button(action: { print("Leading item tapped") }, label: {
            Image(systemName: "bell").imageScale(.large)
        })
        
        let trailingItem = Button(action: { print("Trailing") }, label: {
            Image(systemName: "gear").imageScale(.large)
        })
        
        NavigationView {
            /*
            Image(systemName: "swift")
                .navigationBarItems(leading: leadingItem, trailing: trailingItem)
                .navigationBarTitle("내비게이션 바 타이틀")
            */
            
            /*
            NavigationLink(
                destination: Text("Destination View")) {
                Image(systemName: "swift").renderingMode(.original)
            }
            .navigationBarTitle("네비게이션 링크")
            */
            
            /*
            NavigationLink(
                destination: Text("Destination View")) {
                Image(systemName: "swift").renderingMode(.original)
            }
            .navigationBarTitle("네비게이션 바 히든")
            .navigationBarHidden(true)
            */
            
            /*
            NavigationLink(
                destination: Text("Destination View").navigationBarBackButtonHidden(true)) {
                Image(systemName: "swift").renderingMode(.original)
            }
            .navigationBarTitle("네비게이션 바 백버튼 히든")
            */
            
            VStack(spacing: 20) {
                NavigationLink(
                    destination: Text("디테일 뷰 영역").font(.largeTitle)) {
                    Text("마스터 뷰 메뉴1").font(.title)
                }
                
                NavigationLink(
                    destination: Text("디테일 뷰 영역").font(.largeTitle)) {
                    Text("마스터 뷰 메뉴2").font(.title)
                }
            }
            .navigationBarTitle("네비게이션 뷰 스타일")
            
            Text("디테일 뷰").font(.largeTitle)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ButtonsView: View {
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
