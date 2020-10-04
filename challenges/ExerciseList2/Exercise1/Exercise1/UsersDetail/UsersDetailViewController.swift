//
//  UsersDetailViewController.swift
//  Exercise1
//
//  Created by Paolo Prodossimo Lopes on 30/09/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit



class UsersDetailViewController: UIViewController {

  
    @IBOutlet weak var LabelNameText: UILabel!
    
    @IBAction func closeButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
       var users: Users?

        override func viewDidLoad() {
            super.viewDidLoad()
            if let users = users {
                LabelNameText.text = users.nome
                
                
            }
     
            func getViewController() -> UsersDetailViewController? {
            if let usersDetailView = UIStoryboard(name: "UsersDetail", bundle: nil).instantiateInitialViewController() as? UsersDetailViewController {
                return usersDetailView
            }

            return nil
        }
    }

}
