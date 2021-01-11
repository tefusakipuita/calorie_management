//
//  GoalModal.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/03.
//

import SwiftUI

struct GoalModal: View {
    
    // MARK: - Property
    
    @Binding var showGoalModal: Bool
    @State var shouldDismissModal = false
    
    @State var goadText = ""
    
    @State var showAlert = false
    
    
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
                    Text("新しい目標を設定")
                        .font(.system(size: 18))
                    
                    
                    // MARK: - Text Editor
                    CustomTextEditor(goadText: $goadText, placeholder: "あなたの理想はなんですか？")
                        .frame(width: CGFloat.textEditorWidth, height: 140)
                        .padding(.vertical, 20)
                    
                    
                    // MARK: - Decide Button
                    Button(action: {
                        validate()
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
            
            
            
            
            // MARK: - Alert
            if showAlert {
                ValidationAlertView(showAlert: $showAlert, message: "目標を入力してください")
            }
            
        } //: ZStack
        .opacity(shouldDismissModal ? 0 : 1)
        
    }
    
    
    // MARK: - Function
    
    func dismissModal() {
        withAnimation(.easeOut(duration: 0.2)) {
            shouldDismissModal = true
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            showGoalModal = false
        }
    }
    
    
    func validate() {
        guard goadText != "" else {
            return
                withAnimation(.spring()) {
                    showAlert = true
                }
        }
        
        dismissModal()
    }
}

// MARK: - Preview

struct GoalModal_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
