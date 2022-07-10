//
//  MainView.swift
//  ViewsAndModifiers
//
//  Created by Jacek Placek on 10/07/2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            SliderView()
                .tabItem {
                    Label("RGB Slider", systemImage: "list.dash")
                }

            CompositionView()
                .tabItem {
                    Label("Composition", systemImage: "square.and.pencil")
                }
        }
    }
}




struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
