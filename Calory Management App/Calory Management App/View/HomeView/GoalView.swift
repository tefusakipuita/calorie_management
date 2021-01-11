//
//  GoalView.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/02.
//

import SwiftUI

struct GoalView: View {
    
    // MARK: - Property
    
    @Binding var showGoalModal: Bool
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack (alignment: .topTrailing) {
            VStack {
                // MARK: - Text
                Text("目標")
                    .font(.system(size: 18))
                    .padding(.bottom, 18)
                
                
                // MARK: - Goal
                Text("毎日健康な食事をする")
                    .font(.system(size: 16, weight: .light))
                
            } //: VStack
            .padding(.vertical, 26)
            .frame(maxWidth: .infinity)
            .background(
                Color.white
                    .cornerRadius(12)
                    .modifier(ShadowModifier())
            )
            
            
            // MARK: - Top Right Button
            GreenCircleButton(imageName: "plus", fontSize: 18, circlePadding: 7) {
                withAnimation(.spring()) {
                    showGoalModal = true
                }
            }
            .offset(x: 10, y: -10)
            
        } //: ZStack
    }
}

// MARK: - Preview

struct GoalView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
