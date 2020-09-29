//
//  ViewController.swift
//  TableViewExercise
//
//  Created by Paolo Prodossimo Lopes on 28/09/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TableViewDevelopers: UITableView!
    
    var arrayDevelopers = [Developers]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TableViewDevelopers.delegate = self
        TableViewDevelopers.dataSource = self
        
        arrayDevelopers.append(Developers(name: "Paolo", email: "paolo.prodossimo.lopes@gmail.com", imageURL: "capa1.png"))
        arrayDevelopers.append(Developers(name: "Marivaldo", email: "ID@email.com", imageURL: "capa1.png"))
        arrayDevelopers.append(Developers(name: "Tiago", email: "ID@email.com", imageURL: "capa1.png"))
        arrayDevelopers.append(Developers(name: "Narlei", email: "ID@email.com", imageURL: "capa1.png"))
        arrayDevelopers.append(Developers(name: "Jessica", email: "ID@email.com", imageURL: "capa1.png"))
        
    
    }
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("Desenvolvedor: \(arrayDevelopers[indexPath.row].name)")
        print("Email: \(arrayDevelopers[indexPath.row].email)")
        print("\n---------------\n")
        
        tableView.reloadData()
    }
}
extension ViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        arrayDevelopers.remove(at: indexPath.row)
        TableViewDevelopers.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayDevelopers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DeveloperCell", for: indexPath) as! DeveloperCellTableViewCell
        
        cell.setup(developer: arrayDevelopers[indexPath.row])
        
        cell.accessoryType = .detailDisclosureButton//add info icon
        
        return cell
    }
    
    
}
