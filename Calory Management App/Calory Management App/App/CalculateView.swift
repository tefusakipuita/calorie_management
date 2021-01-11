//
//  CalculateView.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/10.
//

import SwiftUI

struct CalculateView: View {
    
    // MARK: - Property
    
    @State var showCaluculateModal = false
    @State var showGoalCaloriesModal = false
    
    @State var fundamentalCalories: Double = 0
    @State var actionCalories: Double = 0
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            
            VStack {
                // MARK: - Burned Calories
                BurnedCaloriesView(showCaluculateModal: $showCaluculateModal, fundamentalCalories: $fundamentalCalories, actionCalories: $actionCalories)
                    .padding(.top, 120)
                    .padding(.bottom, 30)
                
                
                // MARK: - Goal Calories
                GoalCaloriesView(showGoalCaloriesModal: $showGoalCaloriesModal)
                
                
                Spacer(minLength: 0)
            } //: VStack
            .frame(width: CGFloat.defaultWidth)
            
            
            
            
            
            // MARK: - Calculate Modal
            if showCaluculateModal {
                BurnedCaloriesModal(showCaluculateModal: $showCaluculateModal, fundamentalCalories: $fundamentalCalories, actionCalories: $actionCalories)
            }
            
            
            // MARK: - Goal Modal
            if showGoalCaloriesModal {
                
            }
            
        } //: ZStack
        .edgesIgnoringSafeArea(.all)
    }
}

// MARK: - Preview

struct CalculateView_Previews: PreviewProvider {
    static var previews: some View {
        CalculateView()
    }
}
