//
//  LoginViewController.swift
//  TheMovieManager
//
//  Created by Mrunalini Gaddam on 6/19/21.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginViaWebsiteButton: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        emailTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func loginTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "completeLogin", sender: nil)
        TMDBClient.getRequestToken(completion: handleRequestTokenResponse(success:error:))
    }
    
    @IBAction func loginViaWebsiteTapped() {
        TMDBClient.getRequestToken { (success, error) in
            if success {
                UIApplication.shared.open(TMDBClient.Endpoints.webAuth.url, options: [:], completionHandler: nil)
               }
        }
    }
    
    func handleRequestTokenResponse(success: Bool, error:Error?) {
        if success {
            print(TMDBClient.Auth.requestToken)
                TMDBClient.login(username: self.emailTextField.text ?? "", password: self.passwordTextField.text ?? "", completion: self.handleLoginResponse(success:Error:))

        }
        else {
            print("failed")
        }
    }
    func handleLoginResponse(success: Bool, Error: Error?) {
        print(TMDBClient.Auth.requestToken)
        if success {
            TMDBClient.createSessionId(completion: handleSessionResponse(success:Error:))
        }
    }
    func handleSessionResponse(success: Bool, Error: Error?) {
        print(TMDBClient.Auth.requestToken)
        if success {
                self.performSegue(withIdentifier: "completeLogin", sender: nil)
            }
        }
        
    }
