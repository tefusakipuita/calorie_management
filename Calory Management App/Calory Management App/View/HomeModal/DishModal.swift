//
//  DishModal.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/09.
//

import SwiftUI

struct DishModal: View {
    
    // MARK: - Property
    
    @Binding var showDishModal: Bool
    @State var shouldDismissModal = false
    
    @Binding var showIngredientModal: Bool
    
    @State var foodText = ""
    
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
                VStack (spacing: 0) {
                    // MARK: - Title
                    Text("何を食べましたか？")
                        .font(.system(size: 18))
                        .padding(.bottom, 40)
                    
                    
                    // MARK: - Food Name Input
                    HStack {
                        Text("ごはん名: ")
                        
                        TextField("グラタン", text: $foodText)
                            .background(
                                Color.green1
                                    .frame(height: 1.5)
                                    .offset(y: 12)
                            )
                    } //: HStack
                    .font(.system(size: 16))
                    .padding(.bottom, 18)
                    
                    
                    ZStack {
                        // MARK: - Green Rounded Rectangle
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.green1, lineWidth: 1.5)
                            .scaleEffect(1.1)
                        
                        
                        VStack {
                            // MARK: - Total Title
                            HStack {
                                Text("合計")
                                    .font(.system(size: 20, weight: .light))
                                    .kerning(2)
                                
                                Spacer(minLength: 0)
                            } //: HStack
                            
                            
                            // MARK: - Total Nutrition
                            HStack {
                                NutritionView(type: .carbohydrate, value: 180)
                                Spacer(minLength: 0)
                                NutritionView(type: .protein, value: 120)
                                Spacer(minLength: 0)
                                NutritionView(type: .lipid, value: 46)
                                Spacer(minLength: 0)
                                NutritionView(type: .carolie, value: 2400)
                            } //: HStack
                        } //: VStack
                    } //: ZStack
                    .frame(width: CGFloat.textEditorWidth, height: 100)
                    .padding(.vertical, 14)
                    
                    
                    Divider()
                        .padding(.vertical, 10)
                    
                    
                    // MARK: - Selected Ingredients
                    VStack {
                        SelectedNutritionRow(nutrition: Data.nutritions[0], value: 130)
                    } //: VStack
                    
                    
                    Divider()
                        .padding(.vertical, 10)
                    
                    
                    // MARK: - New Ingredients
                    Button(action: {
                        withAnimation (.spring()) {
                            showIngredientModal = true
                        }
                        }, label: {
                            HStack {
                                Image(systemName: "plus")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundColor(.white)
                                    .padding(7)
                                    .background(
                                        Circle()
                                            .fill(Color.greenGradient)
                                            .modifier(GreenShadowModifier())
                                    )
                                
                                Text("材料を追加")
                                    .foregroundColor(Color.black.opacity(0.8))
                                    .font(.system(size: 16))
                                
                                
                                Spacer(minLength: 0)
                            } //: HStack
                        }) //: Button
                    
                    
                    Divider()
                        .padding(.vertical, 10)
                    
                    
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
                ValidationAlertView(showAlert: $showAlert, message: "ごはん名を入力してください")
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
            showDishModal = false
        }
    }
    
    
    func validate() {
        guard foodText != "" else {
            return
                withAnimation(.spring()) {
                    showAlert = true
                }
        }
        
        dismissModal()
    }
}


// MARK: - Preview

struct DishModal_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
        HomeView().previewDevice("iPhone 8")
    }
}
