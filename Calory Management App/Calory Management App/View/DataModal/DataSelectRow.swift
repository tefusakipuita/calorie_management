//
//  DataSelectRow.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/05.
//

import SwiftUI

struct DataSelectRow: View {
    
    // MARK: - Property
    
    let type: DataType
    
    @Binding var selectedType: DataType?
    
    
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
    
    
    // MARK: - Function
    
    func selectType() {
        
    }
}

// MARK: - Preview

struct DataSelectRow_Previews: PreviewProvider {
    static var previews: some View {
        DataView()
    }
}
