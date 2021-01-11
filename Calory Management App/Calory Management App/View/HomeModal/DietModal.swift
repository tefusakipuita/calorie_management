//
//  DietModal.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/03.
//

import SwiftUI

struct DietModal: View {
    
    // MARK: - Property
    
    @Binding var showDietModal: Bool
    @State var shouldDismissModal = false
    
    @State var selectedType: DietType? = nil
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            // MARK: - Dark Blur
            Color.black.opacity(0.6)
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    dismissModal()
                }
            
            
            // MARK: - Modal
            ZStack (alignment: .topLeading) {
                VStack {
                    // MARK: - Title
                    Text("ごはんの栄養記録をつけよう")
                        .font(.system(size: 18))
                    
                    
                    // MARK: - Diet Type Select
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.green1, lineWidth: 2)
                            .scaleEffect(1.1)
                        
                        VStack (alignment: .leading) {
                            DietSelectRow(type: .breakfast, selectedType: $selectedType)
                            DietSelectRow(type: .lunch, selectedType: $selectedType)
                            DietSelectRow(type: .dinner, selectedType: $selectedType)
                            DietSelectRow(type: .snack, selectedType: $selectedType)
                        } //: VStack
                    } //: ZStack
                    .frame(width: CGFloat.textEditorWidth, height: 140)
                    .padding(.vertical, 20)
                    
                    
                    // MARK: - Decide Button
                    Button(action: {
                        dismissModal()
                    }, label: {
                        Text("決定")
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .bold))
                            .padding(.vertical, 12)
                            .padding(.horizontal, 20)
                            .background(
                                Capsule()
                                    .fill(Color.greenGradient)
                            )
                    })
                } //: VStack
                .padding(.vertical, 26)
                .frame(width: CGFloat.defaultWidth)
                .background(
                    Color.white
                        .cornerRadius(12)
                        .modifier(ShadowModifier())
                )
                
                
                // MARK: - Dismiss Button
                GreenCircleButton(imageName: "arrow.left", fontSize: 18, circlePadding: 7) {
                    dismissModal()
                }
                .offset(x: -10, y: -10)
                
            } //: ZStack
            
        } //: ZStack
        .opacity(shouldDismissModal ? 0 : 1)
    }
    
    
    // MARK: - Function
    
    func dismissModal() {
        withAnimation(.easeOut(duration: 0.2)) {
            shouldDismissModal = true
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            showDietModal = false
        }
    }
}

// MARK: - Preview

struct DietModal_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
