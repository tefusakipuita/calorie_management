//
//  CustomTextEditor.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/03.
//

import SwiftUI

struct CustomTextEditor: View {
    
    // MARK: - Property
    
    @Binding var goadText: String
    
    let placeholder: String
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack (alignment: .topLeading) {
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.green1, lineWidth: 2)
                .scaleEffect(1.1)
            
            Text(placeholder)
                .offset(x: 6, y: 8)
            
            TextEditor(text: $goadText)
                .opacity(goadText == "" ? 0.5 : 1)
        } //: ZStack
    }
}

// MARK: - Preview

struct CustomTextEditor_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
