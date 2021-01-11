//
//  RectangleDataView.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/05.
//

import SwiftUI

struct RectangleDataView: View {
    
    // MARK: - Property
    
    @Binding var showNewDataModal: Bool
    
    let rectangleDataWidth = UIScreen.screenWidth / 2
    let rectangleDataHeight = UIScreen.screenWidth * 0.35
    
    let rectangleDataLeftPadding = UIScreen.screenWidth * 0.1
    
    
    // MARK: - Body
    
    var body: some View {
        VStack (spacing: 0) {
            
            // MARK: - Check Data List
            Divider()
            
            
            // MARK: - Top Two List
            HStack (spacing: 0) {
                
                // MARK: - 左上
                ZStack (alignment: .topTrailing) {
                    Button(action: {
                        withAnimation (.spring()) {
                            showNewDataModal = true
                        }
                    }, label: {
                        ChosenDataView(type: .calorie, value: 600)
                            .frame(width: rectangleDataWidth, height: rectangleDataHeight, alignment: .leading)
                            .offset(x: rectangleDataLeftPadding)
                    })
                    
                    // MARK: - Top Right Circle
                    Circle()
                        .fill(Color.purpleGradinet)
                        .frame(width: 10, height: 10)
                        .offset(x: -10, y: 10)
                } //: ZStack
                
                
                Divider()
                
                
                // MARK: - 右上
                ZStack (alignment: .topTrailing) {
                    Button(action: {
                        withAnimation (.spring()) {
                            showNewDataModal = true
                        }
                    }, label: {
                        ChosenDataView(type: .bloodPressure, value: 120)
                            .frame(width: rectangleDataWidth, height: rectangleDataHeight, alignment: .leading)
                            .offset(x: rectangleDataLeftPadding)
                    })
                    
                    Circle()
                        .fill(Color.orangeGradinet)
                        .frame(width: 10, height: 10)
                        .offset(x: -10, y: 10)
                } //: ZStack
                
            } //: HStack
            .frame(height: rectangleDataHeight)
            
            
            Divider()
            
            
            // MARK: - Bottom Two List
            HStack (spacing: 0) {
                
                // MARK: - 左下
                ZStack (alignment: .topTrailing) {
                    Button(action: {
                        withAnimation (.spring()) {
                            showNewDataModal = true
                        }
                    }, label: {
                        SelectDataView()
                            .frame(width: rectangleDataWidth, height: rectangleDataHeight)
                    })
                    
                    Circle()
                        .fill(Color.yellowGradinet)
                        .frame(width: 10, height: 10)
                        .offset(x: -10, y: 10)
                } //: ZStack
                
                
                Divider()
                
                
                // MARK: - 右下
                ZStack (alignment: .topTrailing) {
                    Button(action: {
                        withAnimation (.spring()) {
                            showNewDataModal = true
                        }
                    }, label: {
                        SelectDataView()
                            .frame(width: rectangleDataWidth, height: rectangleDataHeight)
                    })
                    
                    Circle()
                        .fill(Color.blueGradinet)
                        .frame(width: 10, height: 10)
                        .offset(x: -10, y: 10)
                } //: ZStack
            } //: HStack
            .frame(height: rectangleDataHeight)
            
            
            Divider()
            
        } //: VStack
        
    }
}

// MARK: - Preview

struct RectangleDataView_Previews: PreviewProvider {
    static var previews: some View {
        DataView()
    }
}
