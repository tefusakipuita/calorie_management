//
//  GoalCaloriesModal.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/11.
//

import SwiftUI

struct GoalCaloriesModal: View {
    
    // MARK: - Property
    
//    @Binding var showGoalCaloriesModal: Bool
    @State var shouldDismissModal = false
    
    @State var foodText = ""
    @State var carbohydrate = ""
    @State var protein = ""
    @State var lipid = ""
    @State var calorie = ""
    
    
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
                    Text("新しい栄養素のデータ")
                        .font(.system(size: 18))
                        .padding(.bottom, 40)
                    
                    
                    ZStack {
                         // MARK: - Green Rounded Rectangle
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.green1, lineWidth: 2)
                            .scaleEffect(1.1)
                        
                        VStack {
                            // MARK: - Food Name Input
                            HStack {
                                Text("食材名: ")
                                
                                TextField("近くのスーパーのトマト", text: $foodText)
                                    .background(
                                        Color.green1
                                            .frame(height: 1.5)
                                            .offset(y: 12)
                                    )
                            } //: HStack
                            .font(.system(size: 16))
                            .padding(.bottom, 18)
                            
                            
                            // MARK: - Nutrition Input
                            VStack {
                                NutritionInputView(type: .carbohydrate, value: $carbohydrate)
                                NutritionInputView(type: .protein, value: $protein)
                                NutritionInputView(type: .lipid, value: $lipid)
                                NutritionInputView(type: .carolie, value: $calorie)
                            } //: VStack
                        } //: VStack
                        .padding(.leading, 18)
                    } //: ZStack
                    .frame(width: CGFloat.textEditorWidth, height: 190)
                    .padding(.bottom, 40)
                    
                    
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
            
        } //: ZStack
        .opacity(shouldDismissModal ? 0 : 1)
        
    }
    
    
    // MARK: - Function
    
    func dismissModal() {
        withAnimation(.easeOut(duration: 0.2)) {
            shouldDismissModal = true
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
//            showNewFoodModal = false
        }
    }
}

// MARK: - Preview

struct GoalCaloriesModal_Previews: PreviewProvider {
    static var previews: some View {
        GoalCaloriesModal()
    }
}
