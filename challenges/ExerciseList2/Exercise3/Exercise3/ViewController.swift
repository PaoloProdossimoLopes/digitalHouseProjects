//
//  ViewController.swift
//  Exercise3
//
//  Created by Paolo Prodossimo Lopes on 03/10/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   

    @IBOutlet weak var collectionViewCars: UICollectionView!
    
     var arrayCars = [Car]()

        override func viewDidLoad() {
            super.viewDidLoad()
            collectionViewCars.delegate = self
            collectionViewCars.dataSource = self
            
            arrayCars.append(Car(name: "CarX"))
            arrayCars.append(Car(name: "CarX"))
            arrayCars.append(Car(name: "CarX"))
            arrayCars.append(Car(name: "CarX"))
            arrayCars.append(Car(name: "CarX"))
            arrayCars.append(Car(name: "CarX"))
            arrayCars.append(Car(name: "CarX"))
            arrayCars.append(Car(name: "CarX"))
            arrayCars.append(Car(name: "CarX"))
            arrayCars.append(Car(name: "CarX"))
            arrayCars.append(Car(name: "CarX"))
            arrayCars.append(Car(name: "CarX"))
            arrayCars.append(Car(name: "CarX"))
            arrayCars.append(Car(name: "CarX"))
            arrayCars.append(Car(name: "CarX"))
            
            
            
            
            
        }
    }

    extension ViewController: UICollectionViewDelegate {
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            print("Clicou em \(arrayCars[indexPath.row])")
            
            let car = arrayCars[indexPath.row]
            
            if let carDetailView = CarDetailViewController.getViewController() {
                carDetailView.car = car
                present(carDetailView, animated: true, completion: nil)
            }
            
        }
    }

    extension ViewController: UICollectionViewDataSource {
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return arrayCars.count
        }

        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CarsCollectionViewCell", for: indexPath) as! CarsCollectionViewCell

            //cell.setup(name: arrayCars[indexPath.row])
            cell.setup()

            return cell
        }
    }

