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
            AuthService.instace.logUser(withEmail: <#T##String#>, andPassword: <#T##String#>, loginComplete: <#T##(Bool, Error?) -> ()#>)
        }
    }
    
    @IBAction func closeBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}


extension LoginVC: UITextFieldDelegate{}
