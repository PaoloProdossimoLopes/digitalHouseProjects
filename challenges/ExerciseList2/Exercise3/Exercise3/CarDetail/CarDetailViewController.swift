//
//  CarDetailViewController.swift
//  Exercise3
//
//  Created by Paolo Prodossimo Lopes on 03/10/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit

class CarDetailViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    
    var car: Car?

        override func viewDidLoad() {
            super.viewDidLoad()
            ImageView.image = UIImage(named: "Car.jpg")
        }
    static func getViewController() -> CarDetailViewController? {
        if let carDetailView = UIStoryboard(name: "CarDetail", bundle: nil).instantiateInitialViewController() as? CarDetailViewController {
            return carDetailView
        }

        return nil
    }
}

        

