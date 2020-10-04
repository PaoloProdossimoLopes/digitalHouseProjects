//
//  PetDetailViewController.swift
//  Exercise 2
//
//  Created by Paolo Prodossimo Lopes on 03/10/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit

class PetDetailViewController: UIViewController {

    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelPeso: UILabel!
    @IBOutlet weak var labelRaca: UILabel!
    @IBOutlet weak var labelEspecie: UILabel!
    @IBAction func actionButtonClose(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    var pet: Pet?

        override func viewDidLoad() {
            super.viewDidLoad()
            if let pet = pet {
                labelTitle.text = pet.name
                labelPeso.text = pet.peso
                labelRaca.text = pet.raca
                labelEspecie.text = pet.especie
                
            }
        }

        static func getViewController() -> PetDetailViewController? {
            if let petDetailView = UIStoryboard(name: "PetDetail", bundle: nil).instantiateInitialViewController() as? PetDetailViewController {
                return petDetailView
            }

            return nil
        }
    }
