//
//  ValidationAlertView.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/11.
//

import SwiftUI

struct ValidationAlertView: View {
    
    // MARK: - Property
    
    @Binding var showAlert: Bool
    
    @State var shouldDismissAlert = false
    
    let message: String
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            // MARK: - Dark Mask
            Color.black.opacity(0.3)
                .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                // MARK: - Message
                Text(message)
                
                
                Divider()
                    .padding(.top, 6)
                    .padding(.bottom, 12)
                
                
                Button(action: {
                    dismissAlert()
                }, label: {
                    Text("OK")
                        .frame(width: CGFloat.alertWidth)
                })
            } //: VStack
            .padding(.vertical, 18)
            .frame(width: CGFloat.alertWidth)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white)
                    .modifier(ShadowModifier())
            )
            
        } //: ZStack
        .opacity(shouldDismissAlert ? 0 : 1)
    }
    
    
    // MARK: - Function
    
    func dismissAlert() {
        withAnimation(.easeOut(duration: 0.2)) {
            shouldDismissAlert = true
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            showAlert = false
        }
    }
}

// MARK: - Preview

struct ValidationAlertView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
