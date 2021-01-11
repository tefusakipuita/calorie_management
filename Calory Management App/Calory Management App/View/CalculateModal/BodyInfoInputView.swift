//
//  BodyInfoInputView.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/11.
//

import SwiftUI

struct BodyInfoInputView: View {
    
    // MARK: - Property
    
    let title: String
    let unit: String
    
    let placeholder: String
    
    @Binding var value: String
    
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            // MARK: - Title
            Text(title)
                .font(.system(size: 14, weight: .light))
            .frame(width: 40, alignment: .leading)
            
            
            HStack (alignment: .bottom) {
                // MARK: - Value
                TextField("\(placeholder)", text: $value)
                    .keyboardType(.numberPad)
                    .font(.system(size: 14, weight: .light))
                    .frame(width: 70)
                    .background(
                        Color.green1
                            .frame(height: 1.5)
                            .offset(y: 12)
                    )
                
                
                // MARK: - Unit
                Text("\(unit)")
                    .font(.system(size: 12, weight: .light))
            } //: HStack
            
            Spacer(minLength: 0)
        } //: HStack
    }
}

// MARK: - Preview

struct BodyInfoInputView_Previews: PreviewProvider {
    static var previews: some View {
        CalculateView()
    }
}
