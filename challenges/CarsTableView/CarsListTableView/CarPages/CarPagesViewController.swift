//
//  CarPagesViewController.swift
//  CarsListTableView
//
//  Created by Paolo Prodossimo Lopes on 25/09/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit

class CarPagesViewController: UIViewController {

    @IBAction func actionButtonClosePage(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var labelTextNameCar: UILabel!
    
    
    var cars = avoid

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let cars = cars{
            labelTextNameCar.text = ara
        }
        
        

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
