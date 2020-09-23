//
//  Navigation3ViewController.swift
//  MyViewPages
//
//  Created by Paolo Prodossimo Lopes on 22/09/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit

class Navigation3ViewController: UIViewController {

    @IBAction func actionButtonCloseNavigation3(_ sender: Any) {
        if let CloseNavigation3 = UIStoryboard(name: "Navigation3", bundle: nil).instantiateInitialViewController() as? Navigation3ViewController{
            navigationController?.popViewController(animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Navigation Page 3"

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
