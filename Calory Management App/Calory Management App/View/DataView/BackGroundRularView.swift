//
//  BackGroundRularView.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/07.
//

import SwiftUI

struct BackGroundRularView: View {
    
    // MARK: - Property
    
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            // MARK: - Vertical Value
            VStack {
//                Array(stride(from: 4, through: 0, by: 1)).forEach { i in
//                    Text("\(i)")
//                }
            } //: VStack
            
            VStack {
                // MARK: - Horizontal Line
                
                
                // MARK: - Horizontal Value
                
            } //: VStack
        } //: HStack
    }
}

// MARK: - Preview

struct BackGroundRularView_Previews: PreviewProvider {
    static var previews: some View {
        DataView()
        DataView().previewDevice("iPhone 8")
    }
}
