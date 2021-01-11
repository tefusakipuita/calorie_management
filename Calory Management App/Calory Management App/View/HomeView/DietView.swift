//
//  DietView.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/02.
//

import SwiftUI

struct DietView: View {
    
    // MARK: - Property
    
    let type: DietType
    
    @Binding var showDishModal: Bool
    
    
    // MARK: - Body
    
    var body: some View {
        VStack (spacing: 10) {
            // MARK: - Title
            HStack {
                Text(type.title)
                
                Spacer(minLength: 0)
                
                GreenCircleButton(imageName: "plus", fontSize: 14, circlePadding: 5) {
                    withAnimation(.spring()) {
                        showDishModal = true
                    }
                }
            } //: HStack
            .padding(.vertical, 10)
            
            
            // MARK: - Diet List
            DietListView()
            DietListView()
            DietListView()
            
        } //: VStack
        .padding(.vertical, 20)
        .padding(.horizontal, 16)
        .frame(maxWidth: .infinity)
        .background(
            Color.white
                .cornerRadius(12)
                .modifier(ShadowModifier())
        )
        .padding(.bottom, 20)
    }
}

// MARK: - Preview

struct DietView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
