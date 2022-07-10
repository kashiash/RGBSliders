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
            Text("First")
                .font(.largeTitle)
                .padding()
                .foregroundColor(.white)
                .background(.blue)
                .clipShape(Capsule())

            Text("Second")
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
