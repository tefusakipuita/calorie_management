//
//  BottomTabBar.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/10.
//

import SwiftUI

struct BottomTabBar: View {
    
    // MARK: - Property
    
    @Binding var tabSelectedType: TabType
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack (alignment: .top) {
            // MARK: - Background Bar
            Rectangle()
                .fill(Color.white)
                .frame(height: CGFloat.tabBarHeight)
                .shadow(color: Color.black.opacity(0.3), radius: 20)
            
            
            // MARK: - Tab Buttons
            HStack {
                Spacer(minLength: 0)
                TabImageButton(tabType: .home, tabSelectedType: $tabSelectedType)
                Spacer(minLength: 0)
                TabImageButton(tabType: .data, tabSelectedType: $tabSelectedType)
                Spacer(minLength: 0)
                TabImageButton(tabType: .foodManagement, tabSelectedType: $tabSelectedType)
                Spacer(minLength: 0)
                TabImageButton(tabType: .calculate, tabSelectedType: $tabSelectedType)
                Spacer(minLength: 0)
            } //: HStack
            .frame(width: CGFloat.defaultWidth)
            .padding(.top, 16)
            
        } //: ZStack
    }
}

// MARK: - Preview

struct BottomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
        MainView().previewDevice("iPhone 8")
    }
}
