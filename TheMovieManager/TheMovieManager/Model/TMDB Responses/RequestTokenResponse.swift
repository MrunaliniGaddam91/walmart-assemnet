//
//  RequestTokenResponse.swift
//  TheMovieManager
//
//   Created by Mrunalini Gaddam on 6/19/21.
//

import Foundation


struct RequestTokenResponse: Codable {
    let success: Bool
    let expires_at: String
    let request_token: String
    
    
    enum Codingkeys: String, CodingKey {
        case success
        case expires_at = "expires_at"
        case request_token = "request_token"
    }
}
