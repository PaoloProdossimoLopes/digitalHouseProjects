//
//  MyViewThreeViewController.swift
//  MyViewPages
//
//  Created by Paolo Prodossimo Lopes on 22/09/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit

class MyViewThreeViewController: UIViewController {

    @IBAction func actionButtonModal3(_ sender: Any) {
        if let Modal3Open = UIStoryboard(name: "Modal3", bundle: nil).instantiateInitialViewController() as? Modal3ViewController{
            present(Modal3Open, animated: true, completion: nil)
        }
    }
    
    
    @IBAction func actionButtonNavigation3(_ sender: Any) {
        if let openVanvigation3 = UIStoryboard(name: "Navigation3", bundle: nil).instantiateInitialViewController() as? Navigation3ViewController{
            navigationController?.pushViewController(openVanvigation3, animated: true)
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
