//
//  Statistic.swift
//  FeedMyFit
//
//  Created by 祁汝鑫 on 2020/8/6.
//

import Foundation

//MARK - Request

// Id=xxxxxxxx&Token=xxxxxxx&GetAll=true&Date=none
// 或者
// Id=xxxxxxxx&Token=xxxxxxx&GetAll=false&Date=20200401

//MARK - Return

struct Getstatistic: Codable {
    
    var Date: Date
    var HeatQuantity: Int
    var HeatQuantityDiff: Int
    var Protein: Int
    var ProteinDiff: Int
    var Carbohydrates: Int
    var CarbohydratesDiff: Int
    var Fat: Int
    var FatDiff: Int
    var VitaminA: Int
    var VitaminADiff: Int
    var VitaminB1: Int
    var VitaminB1Diff: Int
    var VitaminB2: Int
    var VitaminB2Diff: Int
    var VitaminB6: Int
    var VitaminB6Diff: Int
    var VitaminB12: Int
    var VitaminB12Diff: Int
    var VitaminC: Int
    var VitaminCDiff: Int
    var VitaminD: Int
    var VitaminDDiff: Int
    var VitaminE: Int
    var VitaminEDiff: Int
    var VitaminK: Int
    var VitaminKDiff: Int
    
    struct Date: Codable {
    
        var HealthState: HealthStateType
    
    }
    
    enum HealthStateType: String, Codable {
        case Healthy
        case Sub_healthy
        case Need_improve
    
    }
    
}
