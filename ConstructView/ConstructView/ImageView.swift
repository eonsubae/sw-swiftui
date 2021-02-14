//
//  ImageView.swift
//  ConstructView
//
//  Created by KRITSSEAN on 2021/02/13.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack(spacing: 30) {
            HStack {
                // 사이즈 조절방법
                Image("SwiftUI").resizable(resizingMode: .tile).frame(width: 150, height: 150)
                Image("SwiftUI").resizable().frame(width: 50, height: 50)
                Image("SwiftUI").resizable(capInsets: .init(top: 0, leading: 50, bottom: 0, trailing: 0)).frame(width: 200, height: 200)
            }
            
            HStack(spacing: 30) {
                // 이미지를 요소의 크기에 맞게 어떻게 보여줄 것인가
                Image("SwiftUI").resizable().frame(width: 100, height: 150) // Scale to Fill
                Image("SwiftUI").resizable().scaledToFit().frame(width: 100, height: 150)
                Image("SwiftUI").resizable().scaledToFill().frame(width: 100, height: 150).clipped()
            }
            
            HStack(spacing: 80) {
                // 이미지를 보여줄 비율 지정하기
                Image("SwiftUI").resizable().aspectRatio(0.7, contentMode: .fill).frame(width: 150, height: 150).clipped()
                Image("SwiftUI").resizable().aspectRatio(CGSize(width: 1.6, height: 1), contentMode: .fill).clipped().frame(width: 150, height: 150)
            }
            
            HStack(spacing: 20) {
                // 이미지를 자르기
                Image("SwiftUI").renderingMode(.template).resizable().clipShape(Circle())
                Image("SwiftUI").resizable().clipShape(Rectangle().inset(by: 10))
                Image("SwiftUI").resizable().clipShape(Ellipse().path(in: CGRect(x: 10, y: 10, width: 80, height: 110)))
            }
            
            HStack(spacing: 20) {
                // 시스템에 있는 이미지를 사용하기(글자색의 변경으로 전체 색 변경)
                Image(systemName: "star.circle").foregroundColor(.black)
                Image(systemName: "star.circle.fill").foregroundColor(.pink)
                Image(systemName: "book.fill").imageScale(.small).foregroundColor(.red)
                Image(systemName: "book.fill").imageScale(.medium).foregroundColor(.green)
                Image(systemName: "book.fill").imageScale(.large).foregroundColor(.blue)
            }
        }.foregroundColor(.red)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
