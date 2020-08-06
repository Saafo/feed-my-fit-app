//
//  Models.swift
//  FeedMyFit
//
//  Created by 祁汝鑫 on 2020/7/22.
//

import Foundation

//MARK: -GetselIfinfo

struct UserSelfData: Codable {
   
    var Phonenumber: String
    var Avatar: String?
    var Username: String
    var Sex: String
    var Height: Double
    var Weight: Double
    var BirthDate: String?
    var City: String
    var SkinType: Int
    var HeatQuantityDemand: Int
    var ProteinDemand: Int
    var CarbohydratesDemand: Int
    var FatDemand: Int
    var VitaminADemand: Int
    var VitaminB1Demand: Int
    var VitaminB2Demand: Int
    var VitaminB6Demand: Int
    var VitaminB12Demand: Int
    var VitaminCDemand: Int
    var VitaminDDemand: Int
    var VitaminEDemand: Int
    var VitaminKDemand: Int
    
}

struct UserPublicData: Codable {
    
    var Id: String?
    var Avatar: String?
    var Username: String
    var Sex: String
    var City: String
    
    
}

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
