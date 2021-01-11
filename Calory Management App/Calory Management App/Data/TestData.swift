//
//  TestData.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/02.
//

import SwiftUI


struct Data {
    
    // MARK: - Data View
    static let calories = [""]
    
    static let bloodPressures = [""]
    
    
    // MARK: - Food Management View
    static let nutritions = [
        Nutrition(foodName: "トマト", unitAmount: 100, unit: "g", carbohydrate: 4.7, protein: 0.7, lipid: 0.1, carolie: 18),
        Nutrition(foodName: "キャベツ", unitAmount: 100, unit: "g", carbohydrate: 5, protein: 1.3, lipid: 0.2, carolie: 22),
        Nutrition(foodName: "レタス", unitAmount: 100, unit: "g", carbohydrate: 2.8, protein: 0.6, lipid: 0.1, carolie: 12),
        Nutrition(foodName: "きゅうり", unitAmount: 100, unit: "g", carbohydrate: 3, protein: 1, lipid: 0.1, carolie: 14),
        Nutrition(foodName: "玉ねぎ", unitAmount: 100, unit: "g", carbohydrate: 9, protein: 1, lipid: 0.1, carolie: 37),
        Nutrition(foodName: "にんじん", unitAmount: 100, unit: "g", carbohydrate: 8.8, protein: 1.8, lipid: 0.1, carolie: 44),
        Nutrition(foodName: "じゃがいも", unitAmount: 100, unit: "g", carbohydrate: 17.6, protein: 1.6, lipid: 0.1, carolie: 76),
        Nutrition(foodName: "かぼちゃ", unitAmount: 100, unit: "g", carbohydrate: 20.6, protein: 1.9, lipid: 0.3, carolie: 91),
        Nutrition(foodName: "りんご", unitAmount: 100, unit: "g", carbohydrate: 14.6, protein: 0.2, lipid: 0.1, carolie: 54),
        Nutrition(foodName: "卵", unitAmount: 1, unit: "個", carbohydrate: 0.2, protein: 7.4, lipid: 6.2, carolie: 91),
        Nutrition(foodName: "豚ロース", unitAmount: 100, unit: "g", carbohydrate: 0.2, protein: 19.3, lipid: 19.2, carolie: 263),
        Nutrition(foodName: "豚バラ肉", unitAmount: 100, unit: "g", carbohydrate: 0.1, protein: 14.2, lipid: 34.6, carolie: 386)
    ]
    
}
