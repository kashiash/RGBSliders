//
//  ContainerView.swift
//  ViewsAndModifiers
//
//  Created by Jacek Placek on 10/07/2022.
//

import SwiftUI


let myFont = Font
    .system(size: 24)
    .monospaced()

struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    @ViewBuilder let content: (Int, Int) -> Content

    var body: some View {
        VStack {
            ForEach(0..<rows, id: \.self) { row in
                HStack {
                    ForEach(0..<columns, id: \.self) { column in
                        content(row, column)
                    }
                }
            }
        }
    }
}


struct ContainerView: View {
    
    
    var body: some View {
        GridStack(rows: 4, columns: 4) { row, col in
            VStack {
                Image(systemName: "\(row * 4 + col).circle")
                Text("R\(row) C\(col)")
            }
        }
        .padding()
        .foregroundColor(.mint)
        .background(.yellow)
    }
    
//    var body: some View {
//        GridStack(rows: 4, columns: 4) { row, col in
//            HStack (alignment: .lastTextBaseline, spacing: 15){
//                    Image(systemName: "\(row * 4 + col).circle")
//
//                Text("R\(row) C\(col)")
//            }
//        }
//    }
}

struct ContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerView()
    }
}
