//
//  ViewController.swift
//  LoginScreenPractice
//
//  Created by HALUK BAYRAKCI on 27.06.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    
    @IBOutlet weak private var usernameTextField : UITextField!
    @IBOutlet weak private var passwordTextField : UITextField!
    @IBOutlet weak private var activityIndicator : UIActivityIndicatorView!
    @IBOutlet weak private var logInButton : UIButton!

    let username = "John"
    let password = "12345"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 5
    }

    @IBAction func logInButtonPressed ( _ sender : UIButton) {
        
        if usernameTextField.text!.isEmpty || usernameTextField.text != username {
            alertMessage(title: "ERROR!", message: "Username is incorrect or Field is blank")
        } else if usernameTextField.text == username && passwordTextField.isHidden {
            passwordTextField.isHidden  = false
        } else if passwordTextField.text!.isEmpty || passwordTextField.text != password {
            alertMessage(title: "ERROR!", message: "Password is incorrect or Field is blank")
        } else if passwordTextField.text == password {
            activityIndicator.startAnimating()
        }
        
    }

}

// MARK: UIAlertController

extension ViewController {
    
    
    func alertMessage(title : String , message : String) {
        
        let alert = UIAlertAction(title: "OK", style: .cancel)
        let okButton = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        okButton.addAction(alert)
        self.present(okButton, animated: true)
    }
}

