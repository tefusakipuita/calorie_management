//
//  ChosenDataView.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/05.
//

import SwiftUI

struct ChosenDataView: View {
    
    // MARK: - Property
    
    let type: DataType
    
    let value: Double
    
    
    // MARK: - Body
    
    var body: some View {
        VStack (alignment: .leading, spacing: 10) {
            // MARK: - Logo Image
            Image(systemName: type.imageName)
                .foregroundColor(.green1)
                .font(.system(size: 24, weight: .light))
            
            
            // MARK: - Data Title
            Text(type.title)
                .font(.system(size: 14, weight: .light))
            
            
            // MARK: - Value
            HStack (alignment: .bottom, spacing: 6) {
                Text(String(format: "%.1f", value))
                    .font(.system(size: 26, weight: .regular))
                
                Text(type.unit)
                    .foregroundColor(.gray)
                    .font(.system(size: 14, weight: .light))
            } //: HStack
            
        } //: VStack
        .foregroundColor(.black)
    }
}

// MARK: - Preview

struct ChosenDataView_Previews: PreviewProvider {
    static var previews: some View {
        DataView()
        DataView().previewDevice("iPhone 8")
    }
}
