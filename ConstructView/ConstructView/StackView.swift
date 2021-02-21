//
//  StackView.swift
//  ConstructView
//
//  Created by KRITSSEAN on 2021/02/21.
//

import SwiftUI

struct StackView: View {
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 150, height: 150)
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 150, height: 250)
            }
            
            HStack {
                Text("HStack").font(.title).foregroundColor(Color.blue)
                Text("은 뷰를 가로로 배열합니다.")
                Text("!")
            }
            .padding()
            .border(Color.black)
            .font(.largeTitle)
            
            HStack { // 출력되는 내용 없음
                Spacer().background(Color.blue)
            }
            
            Spacer().background(Color.blue) // 공간 최대 확장
            
            HStack { // 다른 요소와 함께 포함되었을 때
                Spacer().background(Color.blue).frame(width: 100)
                Text("Spacer").font(.title).background(Color.yellow)
            }.background(Color.blue)
            
            HStack { // 다른 요소와 함께 포함되었을 때
                Text("Spacer MinLength").font(.title).foregroundColor(.white)
                Spacer(minLength: 100)
                Text("Spacer").font(.title).background(Color.yellow)
            }.background(Color.blue)
            
            VStack {
                Spacer()
                Text("Spacer").font(.title).background(Color.yellow)
            }.background(Color.green)
            
            ZStack {
                Color.clear
                Text("Z Spacer").font(.title).background(Color.yellow)
            }.background(Color.red)
        }
        
        HStack {
            VStack {
                Text("제목").font(.largeTitle)
                Text("부제목").foregroundColor(Color.gray)
                Spacer()
                Text("본문 내용")
                Spacer()
                Spacer()
                Text("각주").font(.body)
            }
            .font(.title)
            .frame(width: 250, height: 350)
            .padding()
            .border(Color.blue, width: 2)
        }
        
        VStack {
            Text("도형 만들기").font(.largeTitle).fontWeight(.heavy)
            
            HStack {
                Text("둥근 모양").font(.title)
                Spacer()
            }
            ZStack {
                Rectangle().frame(height: 10)
                
                HStack {
                    Circle().fill(Color.yellow)
                    Ellipse().fill(Color.green)
                    Capsule().fill(Color.orange)
                    RoundedRectangle(cornerRadius: 30).fill(Color.gray)
                }
            }
            
            HStack {
                Text("각진 모양").font(.title)
                Spacer()
            }
            ZStack {
                Rectangle().frame(height: 10)
                
                HStack {
                    Color.red
                    Rectangle().fill(Color.blue)
                    RoundedRectangle(cornerRadius: 0).fill(Color.purple)
                }
            }
        }.padding()
        
        VStack {
            ZStack {
                Rectangle().fill(Color.green).frame(width: 150, height: 150)
                Rectangle().fill(Color.yellow).frame(width: 150, height: 150)
            }
            
            Spacer()
            
            Rectangle().fill(Color.green).frame(width: 150, height: 150)
                .overlay(
                    Rectangle().fill(Color.yellow).frame(width: 150, height: 150)
                )
            
            Spacer()
            
            Rectangle().fill(Color.yellow).frame(width: 150, height: 150)
                .background(
                    Rectangle().fill(Color.green)
                )
        }
        
        VStack {
            Circle()
                .fill(Color.yellow.opacity(0.8))
                .frame(width: 250, height: 250)
                // overlay
                .overlay(Text("Joystick").font(.largeTitle))
                .overlay(Image(systemName: "arrow.up").font(.title).padding(), alignment: .top)
                .overlay(Image(systemName: "arrow.left").font(.title).padding(), alignment: .leading)
                .overlay(Image(systemName: "arrow.up.right.circle.fill").font(.title).padding(), alignment: .topTrailing)
                // background
                .background(Image(systemName: "arrow.down").font(.title).padding(), alignment: .bottom)
                .background(Image(systemName: "arrow.right").font(.title).padding(), alignment: .trailing)
        }
        
        ZStack {
            VStack {
                Spacer()
                Image(systemName: "arrow.down").font(.title).padding()
            }
            
            HStack {
                Spacer()
                Image(systemName: "arrow.right").font(.title).padding()
            }
            
            Circle().fill(Color.yellow.opacity(0.8)).frame(width: 250, height: 250)
            
            Text("Joystick").font(.largeTitle)
            
            ZStack(alignment: .topTrailing) {
                Color.clear
                Image(systemName: "arrow.up.right.circle.fill").font(.title)
            }
            
            VStack {
                Image(systemName: "arrow.up").font(.title).padding()
                Spacer()
            }
            
            HStack {
                Image(systemName: "arrow.left").font(.title).padding()
                Spacer()
            }
        }.frame(width: 250, height: 250)
    }
}

struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}
