//
//  Publicinfo.swift
//  FeedMyFit
//
//  Created by 祁汝鑫 on 2020/8/6.
//

import Foundation

//MARK - Request

// Id=xxxxxxx&Token=xxxxxxx&Getid=zzzzzz //Getid为需要获取的用户id

//MARK - Return

struct UserPublicData: Codable {
    
    var Id: String?
    var Avatar: String?
    var Username: String
    var Sex: String
    var City: String
    
}
