//
//  ViewController.swift
//  Exercise 4
//
//  Created by Paolo Prodossimo Lopes on 04/10/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionViewItens: UICollectionView!
    
    var arraypessoas = [Pessoas]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        arraypessoas.append(Pessoas(nome: "Paolo"))
        arraypessoas.append(Pessoas(nome: "Caio"))
        arraypessoas.append(Pessoas(nome: "Joao"))
        arraypessoas.append(Pessoas(nome: "Marcos"))
        arraypessoas.append(Pessoas(nome: "Diego"))
        arraypessoas.append(Pessoas(nome: "Fernando"))
        arraypessoas.append(Pessoas(nome: "Narlei"))
        arraypessoas.append(Pessoas(nome: "Jessica"))
        arraypessoas.append(Pessoas(nome: "Leticia"))
        arraypessoas.append(Pessoas(nome: "Eduardo"))
        arraypessoas.append(Pessoas(nome: "Paolo"))
        arraypessoas.append(Pessoas(nome: "Caio"))
        arraypessoas.append(Pessoas(nome: "Joao"))
        arraypessoas.append(Pessoas(nome: "Marcos"))
        arraypessoas.append(Pessoas(nome: "Diego"))
        arraypessoas.append(Pessoas(nome: "Fernando"))
        arraypessoas.append(Pessoas(nome: "Narlei"))
        arraypessoas.append(Pessoas(nome: "Jessica"))
        arraypessoas.append(Pessoas(nome: "Leticia"))
        arraypessoas.append(Pessoas(nome: "Eduardo"))
        
        
        
        collectionViewItens.delegate = self
        collectionViewItens.dataSource = self
    }
}

extension ViewController:UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    print("Clicou em \(arraypessoas[indexPath.row])")
    
        
   
    }
        
    
    
}
extension ViewController:UICollectionViewDataSource{
    
    
    func collectionView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        arraypessoas.remove(at: indexPath.row)
        collectionViewItens.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arraypessoas.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PessoasCollectionViewCell", for: indexPath) as! PessoasCollectionViewCell
        
        cell.setup(pessoas: arraypessoas[indexPath.row])
        return cell
    }
    
    
}
