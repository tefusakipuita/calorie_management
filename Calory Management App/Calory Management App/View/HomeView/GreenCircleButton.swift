//
//  GreenPlusButton.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/03.
//

import SwiftUI

struct GreenCircleButton: View {
    
    // MARK: - Property
    
    let imageName: String
    
    let fontSize: CGFloat
    let circlePadding: CGFloat
    
    let action: () -> Void
    
    
    // MARK: - Body
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            Image(systemName: imageName)
                .font(.system(size: fontSize, weight: .semibold))
                .foregroundColor(.white)
                .padding(circlePadding)
                .background(
                    Circle()
                        .fill(Color.greenGradient)
                        .modifier(GreenShadowModifier())
                )
        })
    }
}

// MARK: - Preview

struct GreenPlusButton_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
