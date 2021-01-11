//
//  FoodManagementNavBar.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/08.
//

import SwiftUI

struct FoodManagementNavBar: View {
    
    // MARK: - Property
    
    let leftImageName: String
    let rightName: String
    
    let centerName: String
    
    let rightAction: () -> Void
    
    
    // MARK: - Body
    
    var body: some View {
        
        ZStack (alignment: .bottom) {
            
            // MARK: - Background
            Rectangle()
                .fill(Color.white)
                .frame(width: UIScreen.screenWidth, height: CGFloat.navigationBarHeight)
            
            
            HStack {
                // MARK: - Left Button
                Button(action: {
//                    leftAction()
                }, label: {
                    Image(systemName: leftImageName)
                        .foregroundColor(.green1)
                        .font(.system(size: 22, weight: .regular))
                }) //: Button
                
                Spacer(minLength: 0)
            
                
                // MARK: - Right Button
                Button(action: {
                    rightAction()
                }, label: {
                    Text(rightName)
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .bold))
                        .padding(.vertical, 6)
                        .padding(.horizontal, 12)
                        .background(
                            Capsule()
                                .fill(Color.greenGradient)
                        )
                }) //: Button
                
            } //: HStack
            .padding(.horizontal, 25)
            .frame(width: UIScreen.screenWidth, height: 45)
            
            
            // MARK: - Center Image || Text || Both
            Text(centerName)
                .foregroundColor(Color.black.opacity(0.75))
                .font(.system(size: 20, weight: .regular, design: .rounded))
                .padding(.bottom, 8)
            
            Spacer(minLength: 0)
            
            
            // MARK: - Under Line
            Divider()
            
        } //: ZStack
    }
}

// MARK: - Preview
struct FoodManagementNavBar_Previews: PreviewProvider {
    static var previews: some View {
        FoodManagementView()
        FoodManagementView().previewDevice("iPhone 8")
    }
}
