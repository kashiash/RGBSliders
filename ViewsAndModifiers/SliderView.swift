//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Jacek Placek on 10/07/2022.
//

import SwiftUI

struct SliderView: View {
    @State private var speed1 = 50.0
    @State private var speed2 = 50.0
    @State private var speed3 = 50.0
    @State private var isEditing1 = false
    @State private var isEditing2 = false
    @State private var isEditing3 = false
    
    
    var red: Color {
        Color(UIColor(red: speed1/100, green: 0, blue: 0, alpha: 1.0) )
    }
    var green: Color {
        Color(UIColor(red: 0, green: speed2/100, blue: 0, alpha: 1.0) )
    }
    var blue: Color {
        Color(UIColor(red: 0, green: 0, blue: speed3/100, alpha: 1.0) )
    }
    var composition: Color {
        Color(UIColor(red: speed1/100, green: speed2/100, blue: speed3/100, alpha: 1.0) )
    }
    
    var body: some View {
        
        
        VStack{
      

            
            Button("Hello World") {
                print(type(of: self.body))
            }
            .frame(width: 200, height: 200)
            .background(composition)
            .padding()
            .background(red)
            .padding()
            .background(green)
            .padding()
            .background(blue)
            .padding()
   
            
            
            Slider(
                value: $speed1,
                in: 0...100,
                onEditingChanged: { editing in
                    isEditing1 = editing
                }
            )
            Text("\(speed1)")
                .foregroundColor(isEditing1 ? .mint : red)
            Slider(
                value: $speed2,
                in: 0...100,
                onEditingChanged: { editing in
                    isEditing2 = editing
                }
            )
            Text("\(speed2)")
                .foregroundColor(isEditing2 ? .mint : green)
            Slider(
                value: $speed3,
                in: 0...100,
                onEditingChanged: { editing in
                    isEditing3 = editing
                }
            )
            Text("\(speed3)")
                .foregroundColor(isEditing3 ? .mint : blue)
        }
      //  .blur(radius: 5)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
