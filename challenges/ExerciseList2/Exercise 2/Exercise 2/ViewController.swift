//
//  ViewController.swift
//  Exercise 2
//
//  Created by Paolo Prodossimo Lopes on 03/10/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tabelViewList: UITableView!
    

    
    
    var arrayPets = [Pet]()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
                // Do any additional setup after loading the view.
        tabelViewList.delegate = self
        tabelViewList.dataSource = self
        
        arrayPets.append(Pet(name:"NomeX", peso:"PesoX", especie:"EspecieX",  raca: "racaX"))
        arrayPets.append(Pet(name:"NomeXX", peso:"PesoX", especie:"EspecieX",  raca: "racaX"))
        arrayPets.append(Pet(name:"NomeXXX", peso:"PesoX", especie:"EspecieX",  raca: "racaX"))
        arrayPets.append(Pet(name:"NomeXXXX", peso:"PesoX", especie:"EspecieX",  raca: "racaX"))
        arrayPets.append(Pet(name:"NomeXXXXX", peso:"PesoX", especie:"EspecieX",  raca: "racaX"))
        arrayPets.append(Pet(name:"NomeXXXXXX", peso:"PesoX", especie:"EspecieX",  raca: "racaX"))
        arrayPets.append(Pet(name:"NomeXXXXXXX", peso:"PesoX", especie:"EspecieX",  raca: "racaX"))
        arrayPets.append(Pet(name:"NomeXXXXXXXX", peso:"PesoX", especie:"EspecieX",  raca: "racaX"))
        arrayPets.append(Pet(name:"NomeXXXXXXXXX", peso:"PesoX", especie:"EspecieX",  raca: "racaX"))
        arrayPets.append(Pet(name:"NomeXXXXXXXXXX", peso:"PesoX", especie:"EspecieX",  raca: "racaX"))
        
    }
}

extension ViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pet = arrayPets[indexPath.row]
        print("Selecionou \(arrayPets[indexPath.row].name)")

        if let petDetailView = PetDetailViewController.getViewController() {
            petDetailView.pet = pet
            present(petDetailView, animated: true, completion: nil)
        }
    }
}
extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayPets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.accessoryType = .detailDisclosureButton
        cell.textLabel?.text = "\(arrayPets[indexPath.row].name) | \(arrayPets[indexPath.row].raca) | \(arrayPets[indexPath.row].especie) | \(arrayPets[indexPath.row].peso)"
        return cell
    }
    
    
}
