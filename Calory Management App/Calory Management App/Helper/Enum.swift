//
//  Enum.swift
//  Calory Management App
//
//  Created by 中筋淳朗 on 2021/01/02.
//

import SwiftUI



// MARK: - TabType
enum TabType {
    case home
    case data
    case foodManagement
    case calculate
    
    var imageName: String {
        switch self {
        case .home:
            return "homeTab"
        case .data:
            return "dataTab"
        case .foodManagement:
            return "foodManagementTab"
        case .calculate:
            return "calculateTab"
        }
    }
}


// MARK: - DietType
enum DietType {
    case breakfast
    case lunch
    case dinner
    case snack
    
    var title: String {
        switch self {
        case .breakfast:
            return "朝ごはん"
        case .lunch:
            return "お昼ごはん"
        case .dinner:
            return "晩ごはん"
        case .snack:
            return "間食"
        }
    }
}


// MARK: - DataType
enum DataType {
    case calorie  // カロリー
    case weight  // 体重
    case bodyFatPercentage  // 体脂肪率
    case bloodPressure  // 血圧
    case BloodGlucoseLevel  // 血糖値
    
    
    var title: String {
        switch self {
        case .calorie:
            return "カロリー"
        case .weight:
            return "体重"
        case .bodyFatPercentage:
            return "体脂肪率"
        case .bloodPressure:
            return "血圧"
        case .BloodGlucoseLevel:
            return "血糖値"
        }
    }
    
    var imageName: String {
        switch self {
        case .calorie:
            return "flame.fill"
        case .weight:
            return ""
        case .bodyFatPercentage:
            return ""
        case .bloodPressure:
            return "bolt.heart.fill"
        case .BloodGlucoseLevel:
            return ""
        }
    }
    
    var unit: String {
        switch self {
        case .calorie:
            return "kcal"
        case .weight:
            return "kg"
        case .bodyFatPercentage:
            return "%"
        case .bloodPressure:
            return "mmHg"
        case .BloodGlucoseLevel:
            return ""
        }
    }
}


// MARK: - NutritionType
enum NutritionType {
    case carbohydrate
    case protein
    case lipid
    case carolie
    
    var title: String {
        switch self {
        case .carbohydrate:
            return "炭水化物"
        case .protein:
            return "たんぱく質"
        case .lipid:
            return "脂質"
        case .carolie:
            return "カロリー"
        }
    }
    
    var color: LinearGradient {
        switch self {
        case .carbohydrate:
            return Color.purpleGradinet
        case .protein:
            return Color.orangeGradinet
        case .lipid:
            return Color.yellowGradinet
        case .carolie:
            return Color.blueGradinet
        }
    }
    
    var unit: String {
        switch self {
        case .carbohydrate:
            return "g"
        case .protein:
            return "g"
        case .lipid:
            return "g"
        case .carolie:
            return "kcal"
        }
    }
}



// MARK: - SexType
enum SexType {
    case man
    case woman
    
    var title: String {
        switch self {
        case .man:
            return "男性"
        case .woman:
            return "女性"
        }
    }
}



// MARK: - ActionType
enum ActionType {
    case veryLow
    case low
    case normal
    case high
    case veryHigh
    
    var title: String {
        switch self {
        case .veryLow:
            return "通勤・デスクワーク程度"
        case .low:
            return "週に1.2回の運動"
        case .normal:
            return "週に3~5回の運動"
        case .high:
            return "週に6.7回の運動"
        case .veryHigh:
            return "1日に2回程度の運動"
        }
    }
    
    var ratio: Double {
        switch self {
        case .veryLow:
            return 0.2
        case .low:
            return 0.375
        case .normal:
            return 0.55
        case .high:
            return 0.725
        case .veryHigh:
            return 0.9
        }
    }
}
 
