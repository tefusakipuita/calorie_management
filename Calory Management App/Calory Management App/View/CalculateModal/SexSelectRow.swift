//
//  SexSelectRow.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/11.
//

import SwiftUI

struct SexSelectRow: View {
    
    // MARK: - Property
    
    let type: SexType
    
    @Binding var selectedType: SexType?
    
    
    // MARK: - Body
    
    var body: some View {
        HStack (spacing: 4) {
            // MARK: - Check Circle
            if selectedType == type {  // チェック状態
                Image(systemName: "checkmark.circle.fill")
                    .resizable()
                    .foregroundColor(.green1)
                    .frame(width: 12, height: 12)
            }
            else {  // 未選択状態
                Image(systemName: "circle")
                    .resizable()
                    .foregroundColor(Color.black.opacity(0.7))
                    .frame(width: 12, height: 12)
            }
            
            
            // MARK: - Title
            Text(type.title)
                .font(.system(size: 12, weight: .light))
            
        } //: HStack
        .frame(height: 15)
        .onTapGesture {
            withAnimation(.spring()) {
                selectedType = type
            }
        }
    }
}

// MARK: - Preview

struct SexSelectRow_Previews: PreviewProvider {
    static var previews: some View {
        CalculateView()
    }
}
