//
//  LoginVC.swift
//  Breakpoint
//
//  Created by Massimiliano on 14/05/2019.
//  Copyright © 2019 Massimiliano Bonafede. All rights reserved.
//

import UIKit




class LoginVC: UIViewController {

    @IBOutlet weak var emailField: InsertTextField!
    @IBOutlet weak var passwordField: InsertTextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emailField.delegate = self
        passwordField.delegate = self
    }
    
    
    
    
    @IBAction func signInBtnWasPressed(_ sender: Any) {
        if emailField.text != nil && passwordField.text != nil {
            AuthService.instace.logUser(withEmail: emailField.text!, andPassword: passwordField.text!, loginComplete: { (success, loginError) in
                if success {
                    self.dismiss(animated: true, completion: nil)
                } else {
                    print(String(describing: loginError?.localizedDescription))
                }
                
                AuthService.instace.registerUser(withEmail: self.emailField.text!, andPassword: self.passwordField.text!, userCreationComplete: { (success, registrationError) in
                    if success {
                        AuthService.instace.logUser(withEmail: self.emailField.text!, andPassword: self.passwordField.text!, loginComplete: { (success, nil) in
                            print("Successfully register user")
                        })
                    } else {
                        self.dismiss(animated: true, completion: nil)
                        print(String(describing: registrationError?.localizedDescription))
                    }
                })
            })
        }
    }
    
    @IBAction func closeBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}


extension LoginVC: UITextFieldDelegate{}
