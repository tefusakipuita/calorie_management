//
//  ContentView.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/01.
//

import SwiftUI

struct MainView: View {
    
    // MARK: - Property
    
    @State var tabSelectedType: TabType = .home
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack (alignment: .bottom) {
            // MARK: - Main View
            if tabSelectedType == .home {
                HomeView()
                    .padding(.bottom, CGFloat.tabBarHeight)
            }
            else if tabSelectedType == .data {
                DataView()
            }
            else if tabSelectedType == .foodManagement {
                FoodManagementView()
                    .padding(.bottom, CGFloat.tabBarHeight)
            }
            else if tabSelectedType == .calculate {
                CalculateView()
            }
            
            
            // MARK: - Bottom Tab
            BottomTabBar(tabSelectedType: $tabSelectedType)
            
        } //: ZStack
        .frame(width: UIScreen.screenWidth)
        .edgesIgnoringSafeArea(.all)
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
