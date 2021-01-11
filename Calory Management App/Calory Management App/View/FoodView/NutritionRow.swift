//
//  NutritionRow.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/08.
//

import SwiftUI

struct NutritionRow: View {
    
    // MARK: - Property
    
    let nutrition: Nutrition
    
    var unitValue: String {
        return String(Int(nutrition.unitAmount))
    }
    
    
    // MARK: - Body
    
    var body: some View {
        VStack (spacing: 0) {
            VStack {
                // MARK: - Food Name & Unit
                HStack (alignment: .bottom, spacing: 14) {
                    Text(nutrition.foodName)
                        .foregroundColor(Color.black.opacity(0.8))
                        .font(.system(size: 18, weight: .light))
                        .background(
                            Color.green1
                                .frame(height: 1.5)
                                .offset(y: 14)
                        )
                    
                    Spacer(minLength: 0)
                    Text("( \(unitValue)\(nutrition.unit)あたり )")
                        .foregroundColor(Color.black.opacity(0.7))
                        .font(.system(size: 12, weight: .light))
                } //: HStack
                .padding(.bottom, 10)
                
                
                // MARK: - Nutrition Data
                HStack {
                    NutritionView(type: .carbohydrate, value: nutrition.carbohydrate)
                    Spacer(minLength: 0)
                    NutritionView(type: .protein, value: nutrition.protein)
                    Spacer(minLength: 0)
                    NutritionView(type: .lipid, value: nutrition.lipid)
                    Spacer(minLength: 0)
                    NutritionView(type: .carolie, value: nutrition.carolie)
                } //: HStack
            } //: VStack
            .padding(.vertical, 10)
            
            
            // MARK: - Divider
            
            Divider()
            
        } //: VStack
    }
}

// MARK: - Preview

struct NutritionRow_Previews: PreviewProvider {
    static var previews: some View {
        FoodManagementView()
        FoodManagementView().previewDevice("iPhone 8")
    }
}
