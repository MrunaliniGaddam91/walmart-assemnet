//
//  Logout.swift
//  TheMovieManager
//
//  Created by Mrunalini Gaddam on 6/19/21.
//

import Foundation


struct  LogoutRequest: Codable {
    let sessionId: String
    
    enum CodingKeys: String, CodingKey {
        case sessionId = "session_id"
    }
}
