//
//  ViewController.swift
//  LoginScreen
//
//  Created by Paolo Prodossimo Lopes on 15/09/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        textFieldEmail.delegate = self
        textFieldPassword.delegate = self
    }
    
    private func check() -> Bool {
        if textFieldEmail.text == nil || (textFieldEmail.text == "") {
            print("Falta o Email")
            
            // Begin aleart
            let alert = UIAlertController(title: "Atenção", message: "Falta o email", preferredStyle: .alert)

            let okAction = UIAlertAction(title: "OK", style: .cancel) { (UIAlertAction) in
            }
            alert.addAction(okAction)
            self.present(alert, animated: true) {
               
            }
            // End aleart
            return false
        }
        if textFieldPassword.text == nil || textFieldPassword.text == ""{
            print("Falta a Senha")
            
            // Begin aleart
            let alert = UIAlertController(title: "Atenção", message: "Falta a senha", preferredStyle: .alert)

            let okAction = UIAlertAction(title: "OK", style: .cancel) { (UIAlertAction) in
            }
            alert.addAction(okAction)
            self.present(alert, animated: true) {
               
            }
            // End aleart
            return false
        }
        return true
    }
}

extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == textFieldEmail {
            textFieldPassword.becomeFirstResponder()
        } else {
            if check() {
                textField.resignFirstResponder()
            }
        }
        return true
    }
}

