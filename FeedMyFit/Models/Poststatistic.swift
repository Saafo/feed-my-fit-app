//
//  Poststatistic.swift
//  FeedMyFit
//
//  Created by 祁汝鑫 on 2020/8/6.
//

import Foundation
import

//MARK - Request

struct Poststatistic: Codable {
    
    var Date: st
    var HealthState: HealthStateType
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
    
}
