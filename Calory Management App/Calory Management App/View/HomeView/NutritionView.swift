//
//  NutritionView.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/02.
//

import SwiftUI

struct NutritionView: View {
    
    // MARK: - Property
    
    let type: NutritionType
    
    let value: Double
    
    
    // MARK: - Body
    
    var body: some View {
        VStack (spacing: 6) {
            HStack (spacing: 4) {
                // MARK: - Circle
                Circle()
                    .fill(type.color)
                    .frame(width: 6, height: 6)
                
                
                // MARK: - Title
                Text(type.title)
                    .font(.system(size: 12, weight: .light))
            } //: HStack
            
            
            // MARK: - Value
            Text(String(format: "%.1f" ,value))
                .font(.system(size: 14, weight: .light))
            
        } //: VStack
    }
}

// MARK: - Preview

struct NutritionView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
