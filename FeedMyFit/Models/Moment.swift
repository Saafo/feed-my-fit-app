//
//  Momentsid.swift
//  FeedMyFit
//
//  Created by 祁汝鑫 on 2020/8/7.
//

import Foundation

// MARK: - Momentsid

// - Request

// Id=xxxxxxxx&Token=xxxxxxx&GetAll=true&GetId=none
// 或者
// Id=xxxxxxxx&Token=xxxxxxx&GetAll=false&GetId=xxxx

// - Response

struct MomentsId: Codable {
    
    var MomentsIds: [String]

}

// MARK: - Moment

// - Request

// Id=xxxxxxx&Token=xxxxxxx&MomentID=id1xxxxxx //Id为本用户id

// - Response


