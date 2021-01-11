//
//  TabImageButton.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/10.
//

import SwiftUI

struct TabImageButton: View {
    
    // MARK: - Property
    
    let tabType: TabType
    @Binding var tabSelectedType: TabType
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            Button(action: {
                tabSelectedType = tabType
            }, label: {
                Image(tabType.imageName)
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(tabSelectedType == tabType ? .green1 : Color.black.opacity(0.4))
                    .frame(width: 20, height: 20)
                    .scaleEffect(tabSelectedType == tabType ? 1.2 : 1)
                    .animation(.spring())
                    .rotationEffect(tabSelectedType == tabType ? Angle(degrees: 360) : Angle(degrees: 0))
                    .animation(tabSelectedType == tabType ? .easeOut : nil)
            })
        } //: ZStack
    }
}

// MARK: - Preview

struct TabImageButton_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
