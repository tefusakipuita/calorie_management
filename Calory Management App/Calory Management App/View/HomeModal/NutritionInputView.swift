//
//  NutritionInputView.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/04.
//

import SwiftUI

struct NutritionInputView: View {
    
    // MARK: - Property
    
    let type: NutritionType
    
    @Binding var value: String
    
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            HStack (spacing: 4) {
                // MARK: - Circle
                Circle()
                    .fill(type.color)
                    .frame(width: 6, height: 6)
                
                
                // MARK: - Title
                Text(type.title)
                    .font(.system(size: 12, weight: .light))
                
                
                // MARK: - Unit
                Text("( \(type.unit) )")
                    .font(.system(size: 12, weight: .light))
            } //: HStack
            .frame(width: 120, alignment: .leading)
            
            
            HStack (alignment: .bottom) {
                // MARK: - Value
                TextField("0", text: $value)
                    .font(.system(size: 14, weight: .light))
                    .frame(width: 70)
                    .background(
                        Color.green1
                            .frame(height: 1.5)
                            .offset(y: 12)
                    )
                
                
                // MARK: - Unit2
                Text(type.unit)
                    .font(.system(size: 12, weight: .light))
            } //: HStack
            
            Spacer(minLength: 0)
        } //: HStack
    }
}

// MARK: - Preview

struct NutritionInputView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
