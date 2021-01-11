


// 上に縮小カレンダー、その下にカロリー等のパーセンテージ
// その下に『朝食』『昼食』『晩御飯』(+ 間食)のリスト + 各総合のカロリー等のデータの表示

import SwiftUI

struct HomeView: View {
    
    // MARK: - Property
    
    @State var showGoalModal = false
    @State var showDietModal = false
    @State var showDishModal = false
    @State var showIngredintModal = false
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack (alignment: .top) {
            // MARK: - Background
            Image("home_background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            
            // MARK: - Background2
            Color.white
                .opacity(0.3)
                .edgesIgnoringSafeArea(.all)
            
            
            VStack (spacing: 0) {
                // MARK: - Nav Bar
                NavigationBarView(leftImageName: "", rightImageName: "gearshape", centerName: "ホーム") {}
                
                
                // MARK: - Horizontal Calendar
                Rectangle()
                    .fill(Color.white.opacity(0.5))
                    .frame(height: 60)
                
                
                ScrollView (showsIndicators: false) {
                    VStack {
                        // MARK: - Goal View
                        GoalView(showGoalModal: $showGoalModal)
                            .padding(.bottom, 30)
                            .padding(.top, 40)
                        
                        
                        // MARK: - Total View
                        TotalView()
                            .padding(.bottom, 30)
                        
                        
                        // MARK: - Diet Title
                        HStack {
                            Text("今日のご飯")
                                .padding(.vertical, 7)
                                .padding(.horizontal, 15)
                                .background(
                                    Capsule()
                                        .fill(Color.white)
                                        .modifier(ShadowModifier())
                                )
                            
                            Spacer(minLength: 0)
                            
                            GreenCircleButton(imageName: "plus", fontSize: 18, circlePadding: 7) {
                                withAnimation(.spring()) {
                                    showDietModal = true
                                }
                            }
                        } //: HStack
                        .padding(.bottom, 10)
                        
                        
                        // MARK: - Diet View
                        DietView(type: .breakfast, showDishModal: $showDishModal)
                        DietView(type: .lunch, showDishModal: $showDishModal)
                        DietView(type: .snack, showDishModal: $showDishModal)
                        DietView(type: .dinner, showDishModal: $showDishModal)
                        
                        Spacer()
                    } //: VStack
                    .frame(width: CGFloat.defaultWidth)
                    .padding(.horizontal, 40)
                } //: Scroll
                .frame(width: UIScreen.screenWidth)
                
            } //: VStack
            .edgesIgnoringSafeArea(.top)
            
            
            
            // MARK: - Goal Modal
            if showGoalModal {
                GoalModal(showGoalModal: $showGoalModal)
            }
            
            
            // MARK: - Diet Modal
            if showDietModal {
                DietModal(showDietModal: $showDietModal)
            }
            
            
            // MARK: - Dish Modal
            if showDishModal {
                DishModal(showDishModal: $showDishModal, showIngredientModal: $showIngredintModal)
            }
            
            
            // MARK: - Ingredient Modal
            if showIngredintModal {
                IngredientModal(showIngredientModal: $showIngredintModal)
            }
            
        } //: ZStack
    }
}

// MARK: - Preview

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
        HomeView().previewDevice("iPhone 8")
    }
}
