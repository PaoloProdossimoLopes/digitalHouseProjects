//
//  MyViewOneViewController.swift
//  MyViewPages
//
//  Created by Paolo Prodossimo Lopes on 21/09/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit

class MyViewOneViewController: UIViewController {

    @IBAction func actionButtonPageOneOpenModal(_ sender: Any) {
        // CODE RIGHT BELLOW //
        if let viewModalOne = UIStoryboard(name:"MyViewOneModal", bundle: nil).instantiateInitialViewController() as?  MyViewOneModalViewController{
            present(viewModalOne, animated: true, completion: nil)
        }
    }
    
    @IBAction func actionButtonPageOneOpenViewControler(_ sender: Any) {
        if let openViewControler = UIStoryboard(name: "MyViewOneViewControlerOpen", bundle: nil).instantiateInitialViewController() as? MyViewOneViewControlerOpenViewController{
            
            navigationController?.pushViewController(openViewControler, animated: true)
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "My One View Page"

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
