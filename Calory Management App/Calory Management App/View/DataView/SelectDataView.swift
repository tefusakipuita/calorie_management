//
//  SelectDataView.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/05.
//

import SwiftUI

struct SelectDataView: View {
    
    // MARK: - Property
    
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            
            // MARK: - Top Plus Button
            Image(systemName: "plus")
                .font(.system(size: 18, weight: .semibold))
                .foregroundColor(.white)
                .padding(7)
                .background(
                    Circle()
                        .fill(Color.greenGradient)
                        .modifier(GreenShadowModifier())
                )
            .padding(.bottom, 16)
            
            
            // MARK: - Title
            Text("新しいデータを記録する")
                .foregroundColor(.black)
                .font(.system(size: 14, weight: .light))
        } //: VStack
    }
}

// MARK: - Preview

struct SelectDataView_Previews: PreviewProvider {
    static var previews: some View {
        DataView()
        DataView().previewDevice("iPhone 8")
    }
}
