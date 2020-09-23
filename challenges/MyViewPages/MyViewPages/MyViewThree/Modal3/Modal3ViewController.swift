//
//  Modal3ViewController.swift
//  MyViewPages
//
//  Created by Paolo Prodossimo Lopes on 22/09/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit

class Modal3ViewController: UIViewController {

    @IBAction func actionButtonCloseModel3(_ sender: Any) {
        if let closeModelPage3 = UIStoryboard(name: "Modal3", bundle: nil).instantiateInitialViewController() as? Modal3ViewController{
            dismiss(animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
