//
//  DietSelectRow.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/04.
//

import SwiftUI

struct DietSelectRow: View {
    
    // MARK: - Property
    
    let type: DietType
    
    @Binding var selectedType: DietType?
    
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            // MARK: - Check Circle
            if selectedType == type {  // チェック状態
                Image(systemName: "checkmark.circle.fill")
                    .resizable()
                    .foregroundColor(.green1)
                    .frame(width: 16, height: 16)
            }
            else {  // 未選択状態
                Image(systemName: "circle")
                    .resizable()
                    .foregroundColor(Color.black.opacity(0.7))
                    .frame(width: 16, height: 16)
            }
            
            
            // MARK: - Title
            Text(type.title)
                .font(.system(size: 16, weight: .light))
            
        } //: HStack
        .frame(height: 30)
        .onTapGesture {
            withAnimation(.spring()) {
                selectedType = type
            }
        }
    }
}

// MARK: - Preview

struct DietSelectRow_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
