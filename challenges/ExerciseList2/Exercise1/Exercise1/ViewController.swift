//
//  ViewController.swift
//  Exercise1
//
//  Created by Paolo Prodossimo Lopes on 30/09/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    var arrayUsers=[Users]()
    
    @IBOutlet weak var UsersTableView: UITableView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        UsersTableView.delegate=self
        UsersTableView.dataSource=self
        
        arrayUsers.append(Users(nome: "Paolo Prodossimo Lopes", cargo: "IOS Developer", email: "paolo.prodossimo.lopes@gmail.com"))
        arrayUsers.append(Users(nome: "User 2", cargo: "Cargo 2", email: "E-mail 2"))
        arrayUsers.append(Users(nome: "User 3", cargo: "Cargo 3", email: "E-mail 4"))
        arrayUsers.append(Users(nome: "User 4", cargo: "Cargo 4", email: "E-mail 4"))
        arrayUsers.append(Users(nome: "User 5", cargo: "Cargo 5", email: "E-mail 5"))
        arrayUsers.append(Users(nome: "User 6", cargo: "Cargo 6", email: "E-mail 6"))
        arrayUsers.append(Users(nome: "User 7", cargo: "Cargo 7", email: "E-mail 7"))
        arrayUsers.append(Users(nome: "User 8", cargo: "Cargo 8", email: "E-mail 8"))
        
        
    }
}

extension ViewController: UITableViewDelegate{
    
    //printa no console e retira o clique continuo
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        print("Tocou em: \(arrayUsers[indexPath.row].nome)")
        
        //tableView.reloadData()
        
        if let modal = UIStoryboard(name: "UsersDetail", bundle: nil).instantiateInitialViewController() as? UsersDetailViewController{
            present(modal, animated: true, completion: nil)
           // labelName.text = arrayUsers[indexPath.row].nome
            
        }
        
    }
    
    
    
}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayUsers.count
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        arrayUsers.remove(at: indexPath.row)
        UsersTableView.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UsersTableView.dequeueReusableCell(withIdentifier: "UsersTableViewCell", for: indexPath) as! UsersTableViewCell
        
        cell.setup(users: arrayUsers[indexPath.row])
        cell.accessoryType = .detailDisclosureButton
        return cell
    }
    
    
}
