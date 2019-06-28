//
//  LoginViewController.swift
//  gymglishtest
//
//  Created by Manu on 28/06/2019.
//  Copyright © 2019 Manu Marchand. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {

    //hardcoded credentials for the demo
    let credentials = (email: "demo@gymglish.com", password: "password")
    
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInButton: DesignableButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard)))
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @IBAction func signInButtonPressed(_ sender: Any) {
        let email = emailTextField.text!
        let password = passwordTextField.text!
        
        if auth(email, password) {
            performSegue(withIdentifier: "signIn", sender: self)
            dismissKeyboard()
        } else {
            signInButton.shake()
        }
    }
    
    private func auth(_ email: String, _ password: String) -> Bool {
        if email == credentials.email && password == credentials.password {
            return true
        }
        return false
    }
    
    // MARK: - Keyboard events handling methods
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            
            if view.frame.origin.y == 0 {
                let stackViewBottom = stackView.frame.origin.y + stackView.frame.height
                let keyboardTop = view.frame.height - keyboardSize.height
                let adjustement = stackViewBottom - keyboardTop
                
                if stackViewBottom > keyboardTop {
                    view.frame.origin.y -= adjustement
                }
            }
        }
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        if self.view.frame.origin.y != 0 {
            self.view.frame.origin.y = 0
        }
    }

}
