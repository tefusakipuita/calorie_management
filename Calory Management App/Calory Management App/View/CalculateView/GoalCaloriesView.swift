//
//  GoalCaloriesView.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/10.
//

import SwiftUI

struct GoalCaloriesView: View {
    
    // MARK: - Property
    
    @Binding var showGoalCaloriesModal: Bool
    
    @State var goalCalories: Double = 0
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack (alignment: .topTrailing) {
            VStack {
                // MARK: - Title
                Text("1日の目標カロリー")
                
                
                // MARK: - Goal Calories
                HStack (alignment: .bottom) {
                    Text(String(format: "%.1f", goalCalories))
                        .font(.system(size: 40, weight: .light))
                    
                    Text("kcal")
                        .font(.system(size: 18, weight: .light))
                        .offset(y: -6)
                } //: HStack
                .padding(.vertical, 12)
                
            } //: VStack
            .foregroundColor(.white)
            .font(.system(size: 18))
            .padding(.horizontal, 10)
            .padding(.vertical, 10)
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.greenGradient)
                    .modifier(GreenShadowModifier())
            )
            
            
            // MARK: - Setting Button
            Button(action: {
                withAnimation(.spring()) {
                    showGoalCaloriesModal = true
                }
            }, label: {
                Text("設定")
                    .foregroundColor(.white)
                    .font(.system(size: 14, weight: .bold))
                    .padding(.vertical, 6)
                    .padding(.horizontal, 12)
                    .background(
                        ZStack {
                            Capsule()
                                .fill(Color.white)
                                .shadow(color: Color.white.opacity(0.4), radius: 10, x: 0, y: 0)

                            Capsule()
                                .fill(Color.greenGradient)
                                .scaleEffect(0.9)
                        } //: ZStack
                    )
            })
            .offset(x: 10, y: -10)
            
        } //: ZStack
    }
}

// MARK: - Preview

struct GoalCaloriesView_Previews: PreviewProvider {
    static var previews: some View {
        CalculateView()
    }
}
