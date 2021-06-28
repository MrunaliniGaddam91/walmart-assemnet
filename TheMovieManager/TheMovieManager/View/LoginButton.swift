//
//  LoginButton.swift
//  TheMovieManager
//
//   Created by Mrunalini Gaddam on 6/19/21.
//

import UIKit

class LoginButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.cornerRadius = 5
        tintColor = UIColor.white
        backgroundColor = UIColor.primaryDark
    }
    
}
