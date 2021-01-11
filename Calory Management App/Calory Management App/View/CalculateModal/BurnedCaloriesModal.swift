//
//  BurnedCaloriesModal.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/11.
//

import SwiftUI

struct BurnedCaloriesModal: View {
    
    // MARK: - Property
    
    @Binding var showCaluculateModal: Bool
    @State var shouldDismissModal = false
    
    @Binding var fundamentalCalories: Double
    @Binding var actionCalories: Double
    
    @State var age = ""
    @State var height = ""
    @State var weight = ""
    
    @State var selectedSexType: SexType? = nil
    @State var selectedActionType: ActionType? = nil
    
    @State var showAlert = false
    @State var alertMessage = ""
    
    
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
                VStack (spacing: 0) {
                    // MARK: - Title
                    Text("1日の消費カロリー")
                        .font(.system(size: 18, weight: .light))
                        .padding(.bottom, 40)
                    
                    
                    ZStack {
                         // MARK: - Green Rounded Rectangle
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.green1, lineWidth: 2)
                            .scaleEffect(1.1)
                        
                        VStack (alignment: .leading) {
                            // MARK: - 性別
                                // MARK: - Title
                                HStack {
                                    Text("性別")
                                        .font(.system(size: 14, weight: .light))
                                        .padding(.trailing, 10)
                                    
                                    
                                    // MARK: - Selector
                                    SexSelectRow(type: .man, selectedType: $selectedSexType)
                                    SexSelectRow(type: .woman, selectedType: $selectedSexType)
                                    
                                    Spacer(minLength: 0)
                                } //: HStack
                            
                            
                            // MARK: - 年齢
                            BodyInfoInputView(title: "年齢", unit: "才", placeholder: "20", value: $age)
                            
                            
                            // MARK: - 身長
                            BodyInfoInputView(title: "身長", unit: "cm", placeholder: "170", value: $height)
                            
                            
                            // MARK: - 体重
                            BodyInfoInputView(title: "体重", unit: "kg", placeholder: "60", value: $weight)
                                .padding(.bottom, 7)
                            
                        
                            // MARK: - 運動レベル
                            Text("運動レベル")
                                .font(.system(size: 14, weight: .light))
                            
                            VStack (alignment: .leading) {
                                ActionSelectRow(type: .veryLow, selectedType: $selectedActionType)
                                ActionSelectRow(type: .low, selectedType: $selectedActionType)
                                ActionSelectRow(type: .normal, selectedType: $selectedActionType)
                                ActionSelectRow(type: .high, selectedType: $selectedActionType)
                                ActionSelectRow(type: .veryHigh, selectedType: $selectedActionType)
                            } //: VStack
                            .offset(x: 40)
                            
                        } //: VStack
                        .padding(.leading, 18)
                    } //: ZStack
                    .frame(width: CGFloat.textEditorWidth, height: 280)
                    .padding(.bottom, 40)
                    
                    
                    // MARK: - Calculate Button
                    Button(action: {
                        validate()
                    }, label: {
                        Text("計算する")
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
                .frame(width: CGFloat.defaultWidth - 80)
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
                ValidationAlertView(showAlert: $showAlert, message: alertMessage)
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
            showCaluculateModal = false
        }
    }
    
    
    func validate() {
        guard selectedSexType != nil else {
            return
                withAnimation(.spring()) {
                    alertMessage = "性別を選択してください"
                    showAlert = true
                }
        }
        
        guard age != "" else {
            return
                withAnimation(.spring()) {
                    alertMessage = "年齢を入力してください"
                    showAlert = true
                }
        }
        
        guard height != "" else {
            return
                withAnimation(.spring()) {
                    alertMessage = "身長を入力してください"
                    showAlert = true
                }
        }
        
        guard weight != "" else {
            return
                withAnimation(.spring()) {
                    alertMessage = "体重を入力してください"
                    showAlert = true
                }
        }
        
        guard selectedActionType != nil else {
            return
                withAnimation(.spring()) {
                    alertMessage = "運動レベルを選択してください"
                    showAlert = true
                }
        }
        
        calculateBurnedCalories()
        dismissModal()
    }
    
    
    func calculateBurnedCalories() {
        // String型をDouble型に変換
        let inputWeight = Double(weight) ?? 0
        let inputHeight = Double(height) ?? 0
        let inputAge = Double(age) ?? 0
        
        guard selectedSexType != nil else {return}
        
        // 男性の場合
        if selectedSexType == .man {
            fundamentalCalories = (inputWeight * 13.397) + (inputHeight * 4.799) - (inputAge * 5.677) + 88.362
        }
        // 女性の場合
        else {
            fundamentalCalories = (inputWeight * 9.247) + (inputHeight * 3.098) - (inputAge * 4.33) + 447.593
        }
        
        
        guard selectedActionType != nil else {return}
        
        actionCalories = fundamentalCalories * (selectedActionType?.ratio ?? 0)
    }
}

// MARK: - Preview

struct BurnedCaloriesModal_Previews: PreviewProvider {
    static var previews: some View {
        CalculateView()
    }
}
