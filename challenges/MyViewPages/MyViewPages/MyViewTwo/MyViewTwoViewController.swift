//
//  MyViewTwoViewController.swift
//  MyViewPages
//
//  Created by Paolo Prodossimo Lopes on 22/09/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit

class MyViewTwoViewController: UIViewController {
    @IBAction func actionButtonModalTwoOpen(_ sender: Any) {
        if let openModalTwo = UIStoryboard(name: "ModalTwo", bundle: nil).instantiateInitialViewController() as? ModalTwoViewController{
            
            present(openModalTwo, animated: true, completion: nil)
            
        }
    }
    
    @IBAction func actionButtonNavigationTwo(_ sender: Any) {
        if let openNavigationTwo = UIStoryboard(name: "NavigationTwo", bundle: nil).instantiateInitialViewController() as? NavigationTwoViewController{
            navigationController?.pushViewController(openNavigationTwo, animated: true)
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
