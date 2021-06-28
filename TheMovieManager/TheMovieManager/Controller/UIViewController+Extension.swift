//
//  UIViewController+Extension.swift
//  TheMovieManager
//
//   Created by Mrunalini Gaddam on 6/19/21.
//

import UIKit

extension UIViewController {
    
    @IBAction func logoutTapped(_ sender: UIBarButtonItem) {
        //dismiss(animated: true, completion: nil)
        TMDBClient.logout {
            DispatchQueue.main.async {
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
    
}
