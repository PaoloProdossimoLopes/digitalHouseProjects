//
//  CarsCollectionViewCell.swift
//  30_09_CollectionView
//
//  Created by Rafael Rios on 9/30/20.
//

import UIKit

class CarsCollectionViewCell: UICollectionViewCell {
    
    
    func setup(car: Car) {
        carImage.image = UIImage(named: car.photo)
    }
}
