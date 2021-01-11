//
//  Nutrition.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/07.
//

import SwiftUI

struct Nutrition: Identifiable {
    
    let id = UUID().uuidString
    let foodName: String
    let unitAmount: Double
    let unit: String
    let carbohydrate: Double
    let protein: Double
    let lipid: Double
    let carolie: Double
    
//    let category: String
}
