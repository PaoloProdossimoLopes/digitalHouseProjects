//
//  CarsCollectionViewCell.swift
//  Exercise3
//
//  Created by Paolo Prodossimo Lopes on 03/10/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit

class CarsCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageViewCar: UIImageView!
    
    @IBOutlet weak var labelName: UILabel!
    
    func setup(name: String) {
           labelName.text = name
       }
    func setup(){
        imageViewCar.image = UIImage(named: "Car.jpg")
    }
}
