//
//  NewDataModal.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/05.
//

import SwiftUI

struct NewDataModal: View {
    
    // MARK: - Property
    
    @Binding var showNewDataModal: Bool
    @State var shouldDismissModal = false
    
    @State var selectedType: DataType? = nil
    
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
                    Text("新しいデータを記録しよう")
                        .font(.system(size: 18))
                    
                    
                    Divider()
                        .padding(.vertical, 12)
                        .frame(width: CGFloat.textEditorWidth)
                    
                    
                    // MARK: - Make Original Data
                    Button(action: {

                    }, label: {
                        Text("自分でデータを作成する")
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .bold))
                            .padding(.vertical, 12)
                            .padding(.horizontal, 20)
                            .background(
                                Capsule()
                                    .fill(Color.greenGradient)
                            )
                    }) //: Button
                    
                    
                    Divider()
                        .padding(.vertical, 12)
                        .frame(width: CGFloat.textEditorWidth)
                    
                    // MARK: - Diet Type Select
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.green1, lineWidth: 2)
                            .scaleEffect(1.1)
                        
                        VStack (alignment: .leading) {
                            DataSelectRow(type: .calorie, selectedType: $selectedType)
                            DataSelectRow(type: .weight, selectedType: $selectedType)
                            DataSelectRow(type: .bodyFatPercentage, selectedType: $selectedType)
                            DataSelectRow(type: .bloodPressure, selectedType: $selectedType)
                            DataSelectRow(type: .BloodGlucoseLevel, selectedType: $selectedType)
                        } //: VStack
                    } //: ZStack
                    .frame(width: CGFloat.textEditorWidth, height: 190)
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
                ValidationAlertView(showAlert: $showAlert, message: "データの種類を入力してください")
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
            showNewDataModal = false
        }
    }
    
    
    func validate() {
        guard selectedType != nil else {
            return
                withAnimation(.spring()) {
                    showAlert = true
                }
        }
        
        dismissModal()
    }
}

// MARK: - Preview

struct NewDataModal_Previews: PreviewProvider {
    static var previews: some View {
        DataView()
    }
}
