//
//  OrderView.swift
//  ViewsAndModifiers
//
//  Created by Jacek Placek on 10/07/2022.
//

import SwiftUI

struct CompositionView: View {
    var body: some View {
        VStack(spacing: 10) {
            CapsuleText(text: "First")
            CapsuleText(text: "Second")
        }
    }
    
    
    
    struct CapsuleText: View {
        var text: String

        var body: some View {
            Text(text)
                .font(.largeTitle)
                .padding()
                .foregroundColor(.white)
                .background(.blue)
                .clipShape(Capsule())
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        CompositionView()
    }
}
