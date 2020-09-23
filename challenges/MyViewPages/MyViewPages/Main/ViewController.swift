//
//  ViewController.swift
//  MyViewPages
//
//  Created by Paolo Prodossimo Lopes on 21/09/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func actionButtonPageView1(_ sender: Any) {
        if let viewPage1 = UIStoryboard(name: "MyViewOne", bundle: nil).instantiateInitialViewController() as? MyViewOneViewController{
            navigationController?.pushViewController(viewPage1, animated: true)
        }
    }
    
    @IBAction func actionButtonPageView2(_ sender: Any) {
        if let myPageViewTwo = UIStoryboard(name: "MyViewTwo", bundle: nil).instantiateInitialViewController() as? MyViewTwoViewController{
            navigationController?.pushViewController(myPageViewTwo, animated: true)
        }
    }
    
    @IBAction func actionButtonPage3(_ sender: Any) {
        if let openViewThree = UIStoryboard(name: "MyViewThree", bundle: nil).instantiateInitialViewController() as? MyViewThreeViewController{
            navigationController?.pushViewController(openViewThree, animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "PAGES"
        // Do any additional setup after loading the view.
        
    }


}

