//
//  ViewController.swift
//  CarsListTableView
//
//  Created by Paolo Prodossimo Lopes on 25/09/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var carListTableView: UITableView!
    
    let arrayCars = ["Mercedes", "BMW", "Audi", "Volvo", "Honda"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        carListTableView.delegate = self
        carListTableView.dataSource = self
        
        }
        
    }


extension ViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cars = arrayCars[indexPath.row]
        
        print("Selecionou \(cars)")
        
        if let page = UIStoryboard(name: "CarPages", bundle: nil).instantiateInitialViewController() as? CarPagesViewController{
        present(page, animated: true, completion: nil)
        }
        
    }
}

extension ViewController : UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        let carName = arrayCars[indexPath.row]
        
        cell.imageView?.image = UIImage(named: "\(carName).png")
        cell.textLabel?.text = arrayCars[indexPath.row]
        cell.accessoryType = .detailDisclosureButton
        
        return cell
    }
}
