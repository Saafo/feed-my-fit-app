//
//  Publicinfo.swift
//  FeedMyFit
//
//  Created by 祁汝鑫 on 2020/8/6.
//

import Foundation

// MARK: - Request

// Id=xxxxxxx&Token=xxxxxxx&Getid=zzzzzz //Getid为需要获取的用户id

// MARK: - Return

struct Publicinfo: Codable {
    
    var Id: String?
    var Avatar: String?
    var Username: String
    var Sex: String
    var City: String
    var Streak: Int
}
//
//struct Static {
//    var date: String
//    struct date {
//        var dt1: String
//        var dt2: String
//    }
//}
//
//var statics: [Static] = []
//
//var finalDict: [[String: String]] = []
//
//func initStatics() {
//    let dict = ["2020-01-01": ["dt1":"vl1","dt2":"vl2"], "2020-04-04": ["dt1":"vl1","dt2":"vl2"], "2020-06-06": ["dt1":"vl1","dt2":"vl2"]]
//    //temp = [["date""],xxxxxx]
//    for date in dict.keys {
////        statics.append(Static(date: date, dt1: dict[date]!["dt1"]!, dt2: dict[date]!["dt2"]!))
//        finalDict.append(["date": dict[date]])
//    }
//}
