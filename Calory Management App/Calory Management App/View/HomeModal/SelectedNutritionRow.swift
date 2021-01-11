//
//  SelectedNutritionRow.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/09.
//

import SwiftUI

struct SelectedNutritionRow: View {
    
    // MARK: - Property
    
    let nutrition: Nutrition
    
    let value: Double
    
    // 倍率
    var magnification: Double {
        return value / nutrition.unitAmount
    }
        
    
    var amountValue: String {
        return String(format: "%.1f", value)
    }
    
    
    // MARK: - Body
    
    var body: some View {
        VStack (spacing: 0) {
            VStack {
                // MARK: - Food Name & Unit
                HStack (alignment: .bottom, spacing: 14) {
                    Text(nutrition.foodName)
                        .foregroundColor(Color.black.opacity(0.8))
                        .font(.system(size: 16, weight: .light))
                        .background(
                            Color.green1
                                .frame(height: 1.5)
                                .offset(y: 14)
                        )
                    
                    Spacer(minLength: 0)
                    
                    Text("( \(amountValue)\(nutrition.unit) )")
                        .foregroundColor(Color.black.opacity(0.7))
                        .font(.system(size: 12, weight: .light))
                } //: HStack
                .padding(.bottom, 10)
                
                
                // MARK: - Nutrition Data
                HStack {
                    NutritionView(type: .carbohydrate, value: nutrition.carbohydrate * magnification)
                    Spacer(minLength: 0)
                    NutritionView(type: .protein, value: nutrition.protein * magnification)
                    Spacer(minLength: 0)
                    NutritionView(type: .lipid, value: nutrition.lipid * magnification)
                    Spacer(minLength: 0)
                    NutritionView(type: .carolie, value: nutrition.carolie * magnification)
                } //: HStack
            } //: VStack
            
        } //: VStack
    }
}

// MARK: - Preview

struct SelectedNutritionRow_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
