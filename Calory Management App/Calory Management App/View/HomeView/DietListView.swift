//
//  DietListView.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/02.
//

import SwiftUI

struct DietListView: View {
    
    // MARK: - Property
    
    
    // MARK: - Body
    
    var body: some View {
        VStack (spacing: 10) {
            Divider()
            
            // MARK: - Top
            HStack {
                // MARK: - Left Image
                Image("food")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 18, height: 18)
                
                
                // MARK: - Food Name
                Text("カツ丼")
                
                Spacer(minLength: 0)
                
                
                // MARK: - Disclosure Button Image
                Button(action: {}, label: {
                    Image(systemName: "chevron.down")
                        .foregroundColor(Color.black.opacity(0.8))
                        .font(.system(size: 12, weight: .light))
                })
                
            } //: HStack
            
            
            // MARK: - Bottom
            HStack {
                NutritionView(type: .carbohydrate, value: 150)
                Spacer(minLength: 0)
                NutritionView(type: .protein, value: 80)
                Spacer(minLength: 0)
                NutritionView(type: .lipid, value: 24)
                Spacer(minLength: 0)
                NutritionView(type: .carolie, value: 1600)
            } //: HStack
        } //: VStack
    }
}

// MARK: - Preview

struct DietListView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
