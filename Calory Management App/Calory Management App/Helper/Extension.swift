//
//  Extension.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/01.
//

import SwiftUI


// MARK: - Color

extension Color {
    
    static let green1 = Color("green1")
    static let green2 = Color("green2")
    
    static let purple1 = Color("purple1")
    static let purple2 = Color("purple2")
    static let orange1 = Color("orange1")
    static let orange2 = Color("orange2")
    static let yellow1 = Color("yellow1")
    static let yellow2 = Color("yellow2")
    static let blue1 = Color("blue1")
    static let blue2 = Color("blue2")
    

    static let greenGradient = LinearGradient(gradient: Gradient(colors: [.green1, .green2]), startPoint: .topLeading, endPoint: .bottomTrailing)
    
    static let purpleGradinet = LinearGradient(gradient: Gradient(colors: [.purple1, .purple2]), startPoint: .topLeading, endPoint: .bottomTrailing)
    static let orangeGradinet = LinearGradient(gradient: Gradient(colors: [.orange1, .orange2]), startPoint: .topLeading, endPoint: .bottomTrailing)
    static let yellowGradinet = LinearGradient(gradient: Gradient(colors: [.yellow1, .yellow2]), startPoint: .topLeading, endPoint: .bottomTrailing)
    static let blueGradinet = LinearGradient(gradient: Gradient(colors: [.blue1, .blue2]), startPoint: .topLeading, endPoint: .bottomTrailing)
}



// MARK: - UIScreen

extension UIScreen {
    
    static let screenWidth = UIScreen.main.bounds.width
    static let screenHeight = UIScreen.main.bounds.height
}



// MARK: - UIApplication

extension UIApplication {
    static let inset = UIApplication.shared.windows.first?.safeAreaInsets
}



// MARK: - CGFloat

extension CGFloat {
    
    static let navigationBarHeight = (UIApplication.inset?.top ?? 0) + 45
    static let tabBarHeight = (UIApplication.inset?.bottom ?? 0) + 50   // safeArea分 + デフォルトのタブバーの高さの50
    
    // シミュレータのダミー用
//    static let navigationBarHeight: CGFloat = 44 + 45
//    static let tabBarHeight: CGFloat = 34 + 50
    
    
    static let defaultWidth = UIScreen.screenWidth - 40
    static let textEditorWidth = UIScreen.screenWidth - 120
    static let alertWidth = UIScreen.screenWidth * 0.7
}
