


// 各食材のデフォルトデータを用意
// カスタムで設定できるように

import SwiftUI

struct FoodManagementView: View {
    
    // MARK: - Property
    
    @State var showNewFoodModal = false
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            // MARK: - Background
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            
            VStack (spacing: 0) {
                // MARK: - Nav Bar
                FoodManagementNavBar(leftImageName: "", rightName: "追加", centerName: "マクロ栄養素管理") {
                    withAnimation(.spring()) {
                        showNewFoodModal = true
                    }
                }
                
                
                // MARK: - 食材のカテゴリリスト
                ScrollView {
                    VStack (alignment: .leading, spacing: 0) {
                        ForEach(Data.nutritions) { item in
                            NutritionRow(nutrition: item)
                        }
                    } //: VStack
                    .padding(.horizontal, 40)
                } //: Scroll
            } //: VStack
            .edgesIgnoringSafeArea(.top)
            
            
            
            
            
            // MARK: - New Food Modal
            if showNewFoodModal {
                NewFoodModal(showNewFoodModal: $showNewFoodModal)
            }
            
        } //: ZStack
    }
}

// MARK: - Preview

struct FoodManagementView_Previews: PreviewProvider {
    static var previews: some View {
        FoodManagementView()
        FoodManagementView().previewDevice("iPhone 8")
    }
}
