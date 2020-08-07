//
//  Selfinfo.swift
//  FeedMyFit
//
//  Created by 祁汝鑫 on 2020/8/6.
//

import Foundation

// MARK: - Request

// Id=xxxxxxx&Token=xxxxxxx

// MARK: - Return

struct Selfinfo: Codable {
   
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
