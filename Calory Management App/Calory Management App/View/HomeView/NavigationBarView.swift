//
//  NavigationBarView.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/02.
//

import SwiftUI

struct NavigationBarView: View {
    
    // MARK: - Property
    
    let leftImageName: String
    let rightImageName: String
    
    let centerName: String
    
    let leftAction: () -> Void
    
    
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
                    leftAction()
                }, label: {
                    Image(systemName: leftImageName)
                        .foregroundColor(.green1)
                        .font(.system(size: 22, weight: .regular))
                }) //: Button
                
                Spacer(minLength: 0)
            
                
                // MARK: - Right Button
                Button(action: {}, label: {
                    Image(systemName: rightImageName)
                        .foregroundColor(.green1)
                        .font(.system(size: 20, weight: .regular))
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

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
