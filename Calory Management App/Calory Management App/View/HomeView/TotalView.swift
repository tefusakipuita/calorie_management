//
//  TotalView.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/02.
//

import SwiftUI

struct TotalView: View {
    
    // MARK: - Property
    
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            // MARK: - Title
            Text("今日摂った栄養素")
                .font(.system(size: 18))
                .padding(.bottom, 18)
            
            
            // MARK: - Total Data
            HStack {
                NutritionView(type: .carbohydrate, value: 180)
                Spacer(minLength: 0)
                NutritionView(type: .protein, value: 120)
                Spacer(minLength: 0)
                NutritionView(type: .lipid, value: 46)
                Spacer(minLength: 0)
                NutritionView(type: .carolie, value: 2400)
            } //: HStack
            
        } //: VStack
        .padding(.horizontal, 16)
        .padding(.vertical, 26)
        .frame(maxWidth: .infinity)
        .background(
            Color.white
                .cornerRadius(12)
                .modifier(ShadowModifier())
        )
    }
}

// MARK: - Preview

struct TotalView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
