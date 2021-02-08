//
//  ThreeDotsIndexView.swift
//  Custom Index View
//
//  Created by Brubrusha on 2/6/21.
//

import SwiftUI

struct ThreeDotsIndexView: View {
    let numberOfPages: Int
    let selectedTab: Int
    
    private let circleSize: CGFloat = 16
    private let circleSpacing: CGFloat = 12
    
    private let primaryColor = Color.white
    private let secondoryColor = Color.white.opacity(0.4)
    
    private let smallScale: CGFloat = 0.6
    
    var body: some View {
        HStack(spacing: circleSpacing) {
            ForEach(0..<numberOfPages) { index in
                if shouldShowIndex(index) {
                    Circle()
                        .fill(selectedTab == index ? primaryColor : secondoryColor)
                        .scaleEffect(selectedTab == index ? 1:
                        smallScale)
                        .frame(width: circleSize, height: circleSize)
                }
            }
        }
    }
    func shouldShowIndex(_ index: Int) -> Bool {
        ((selectedTab - 1)...(selectedTab + 1)).contains(index)
    }
}

struct ThreeDotsIndexView_Previews: PreviewProvider {
    static var previews: some View {
        ThreeDotsIndexView(numberOfPages: 4, selectedTab: 0)
    }
}
