//
//  ViewController.swift
//  30_09_CollectionView
//
//  Created by Rafael Rios on 9/30/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewCollection: UICollectionView!
    
    var arrayCars = [Car]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        viewCollection.delegate = self
        viewCollection.dataSource = self
        
        arrayCars.append(Car(photo: "car.png"))
        arrayCars.append(Car(photo: "car02.png"))
        arrayCars.append(Car(photo: "car03.png"))
        arrayCars.append(Car(photo: "car04.png"))
    }


}

extension ViewController: UICollectionViewDelegate {
    
}


extension ViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayCars.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CarsCollectionViewCell", for: indexPath) as! CarsCollectionViewCell
            
            cell.setup(car: arrayCars[indexPath.row])

        
        return cell
    }
    
    
}
