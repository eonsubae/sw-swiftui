//
//  ModifierView.swift
//  ConstructView
//
//  Created by KRITSSEAN on 2021/02/13.
//

import SwiftUI

struct ModifierView: View {
    var body: some View {
        VStack {
            Text("🐶🐱🐴🦊").font(.largeTitle)
                .background(Color.yellow)
                .padding()
            
            Text("🐶🐱🐴🦊").font(.largeTitle)
                .padding()
                .background(Color.yellow)
        }
    }
}

struct ModifierView_Previews: PreviewProvider {
    static var previews: some View {
        ModifierView()
    }
}
