//
//  ContentView.swift
//  Custom Index View
//
//  Created by Brubrusha on 2/5/21.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    private let colors: [Color] = [.red, .blue, .green, .yellow]

    
    var body: some View {
        TabView(selection: $selectedTab) {
            ForEach(0..<colors.count, id: \.self) { index in
                colors[index]
            }
            
        }
        .tabViewStyle(PageTabViewStyle())
        .overlay(ThreeDotsIndexView(numberOfPages: colors.count, selectedTab: selectedTab))
        .animation(.default)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
