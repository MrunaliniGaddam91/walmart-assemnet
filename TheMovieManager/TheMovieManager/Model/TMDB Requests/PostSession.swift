//
//  PostSession.swift
//  TheMovieManager
//
//   Created by Mrunalini Gaddam on 6/19/21.
//

import Foundation

struct  PostSession: Codable {
    let requestToken: String
    
    enum CodingKeys: String, CodingKey {
        case requestToken = "request_token"
    }
}


