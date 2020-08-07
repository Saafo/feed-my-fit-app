//
//  Persistence.swift
//  FeedMyFit
//
//  Created by 祁汝鑫 on 2020/8/7.
//

import Foundation

struct LocalUserData {
    
    var phoneNub: String
    var avatar: String
    var userName: String
    var gender: Gendertype
    var height: Float
    var weight: Float
    var birth: String
    var city: String
    var skin: SkinType
    var dailyData: DailyData
    
    struct DailyData {
        
        var Date: String
        var healthState: HealthStateType
        var heatQuantity: Nutritions
        var Protein: Nutritions
        var Carbohydrates: Nutritions
        var Fat: Nutritions
        lazy var Vitamin: Int = (VitaminA.show + VitaminC.show + VitaminD.show + VitaminE.show + VitaminK.show + VitaminB1.show + VitaminB2.show + VitaminB6.show) / 8
        
        var VitaminA: Nutritions
        var VitaminB1: Nutritions
        var VitaminB2: Nutritions
        var VitaminB6: Nutritions
        var VitaminB12: Nutritions
        var VitaminC: Nutritions
        var VitaminD: Nutritions
        var VitaminE: Nutritions
        var VitaminK: Nutritions
        
        enum HealthStateType: String {
            
            case Healthy
            case Sub_healthy
            case Need_improve
        
        }
        
        struct Nutritions {
            
            var demand: Int
            var hold: Int
            lazy var diff: Int = 100 - hold/demand * 100
            lazy var show: Int = 100 - diff
            
        }
    
    }
    
    enum Gendertype: String {
        case male, famale, unknown
    }
    
    enum SkinType: String {
        case white, yellow, black, unknown

    }

}
