//
//  OrderView.swift
//  ViewsAndModifiers
//
//  Created by Jacek Placek on 10/07/2022.
// https://www.hackingwithswift.com/books/ios-swiftui/custom-modifiers

import SwiftUI


struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
          //  .foregroundColor(.white)
            .padding()
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct Watermark: ViewModifier {
    var text: String

    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
               
                .padding(5)
                .background(.black)
               
        }
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }}

struct CompositionView: View {
    var body: some View {
        VStack(spacing: 10) {
            CapsuleText(text: "First")
                .foregroundColor(.white)
            CapsuleText(text: "Second")
                .foregroundColor(.yellow)
            
            Text("Hello World")
                .modifier(Title())
                .foregroundColor(.red)
            
            Text("Hello World")
                .titleStyle()
                .foregroundColor(.mint)
        }
 
        .watermarked(with: "Jakiś fajny znak wodny")
    }
    
    
    
    struct CapsuleText: View {
        var text: String

        var body: some View {
            Text(text)
                .font(.largeTitle)
                .padding()
               
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
