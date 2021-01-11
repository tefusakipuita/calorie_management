//
//  Modifier.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/02.
//

import SwiftUI



struct ShadowModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: Color.black.opacity(0.15), radius: 16, x: 4, y: 6)
    }
}


struct GreenShadowModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: Color.green1.opacity(0.3), radius: 16, x: 6, y: 8)
    }
}
