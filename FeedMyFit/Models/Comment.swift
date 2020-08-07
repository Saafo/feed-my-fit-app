//
//  Postcomment.swift
//  FeedMyFit
//
//  Created by 祁汝鑫 on 2020/8/6.
//

import Foundation

// MARK: - Request

struct PostcommentRequest: Codable {
    
    var Id: String?
    var Token: String?
    var MomentID: String?
    var Text: String
    var Timestamp: String
    
}

// MARK: - Response

struct PostcommentResponse: Codable {
    
    var CommentID: String?
    
}
