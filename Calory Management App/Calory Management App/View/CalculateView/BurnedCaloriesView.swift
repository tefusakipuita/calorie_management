//
//  BurnedCaloriesView.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/10.
//

import SwiftUI

struct BurnedCaloriesView: View {
    
    // MARK: - Property
    
    @Binding var showCaluculateModal: Bool
    
    @Binding var fundamentalCalories: Double
    @Binding var actionCalories: Double
    
        
    var totalCalories: Double {
        return fundamentalCalories + actionCalories
    }
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack (alignment: .topTrailing) {
            VStack {
                // MARK: - Title
                Text("あなたの１日の消費カロリー")
                    .font(.system(size: 18, weight: .light))
                
                
                // MARK: - Total Calories
                HStack (alignment: .bottom) {
                    Text(String(format: "%.1f", totalCalories))
                        .foregroundColor(.green1)
                        .font(.system(size: 50, weight: .light))
                    
                    Text("kcal")
                        .foregroundColor(.gray)
                        .font(.system(size: 18, weight: .light))
                        .offset(y: -6)
                } //: HStack
                .padding(.vertical, 12)
                
                
                VStack {
                    // MARK: - Fundamental Calories
                    HStack {
                        Text("基礎代謝：")
                            .font(.system(size: 15, weight: .light))
                        
                        Text(String(format: "%.1f", fundamentalCalories))
                            .font(.system(size: 14, weight: .light))
                        
                        Text("kcal")
                            .foregroundColor(.gray)
                            .font(.system(size: 14, weight: .light))
                    } //: HStack
                    
                    
                    // MARK: - Action Calories
                    HStack {
                        Text("活動代謝：")
                            .font(.system(size: 15, weight: .light))
                        
                        Text(String(format: "%.1f", actionCalories))
                            .font(.system(size: 14, weight: .light))
                        
                        Text("kcal")
                            .foregroundColor(.gray)
                            .font(.system(size: 14, weight: .light))
                    } //: HStack
                    
                } //: VStack
            } //: VStack
            .padding(.horizontal, 10)
            .padding(.vertical, 16)
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white)
                    .modifier(ShadowModifier())
            )
            
            
            // MARK: - Calculate Button
            Button(action: {
                withAnimation(.spring()) {
                    showCaluculateModal = true
                }
            }, label: {
                Text("計算")
                    .foregroundColor(.white)
                    .font(.system(size: 14, weight: .bold))
                    .padding(.vertical, 6)
                    .padding(.horizontal, 12)
                    .background(
                        Capsule()
                            .fill(Color.greenGradient)
                            .modifier(GreenShadowModifier())
                    )
            }) //: Button
            .offset(x: 10, y: -10)
            
        } //: ZStack
    }
}

// MARK: - Preview

struct BurnedCaloriesView_Previews: PreviewProvider {
    static var previews: some View {
        CalculateView()
        CalculateView().previewDevice("iPhone 8")
    }
}
