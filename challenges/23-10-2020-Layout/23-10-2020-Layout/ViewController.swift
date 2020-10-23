//
//  ViewController.swift
//  23-10-2020-Layout
//
//  Created by Paolo Prodossimo Lopes on 23/10/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //tableview
    @IBOutlet weak var tableViewMain: UITableView!
    
    
    //buttons
    @IBOutlet weak var buttonConfirmar: UIButton!
    @IBOutlet weak var buttonExcluir: UIButton!
    
     var arrayFilmes = [Filme]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
        arrayFilmes.append(Filme(img: "Masterchef.jpg", nome: "Lorem Ipsum has been the industry'sLorem Ipsum has been the industry's", descricao: "xt of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a gall", estrelas: 2, avaliacoes: 300))
        arrayFilmes.append(Filme(img: "Masterchef.jpg", nome: "Filme2", descricao: "xt of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a gall", estrelas: 4, avaliacoes: 300))
        arrayFilmes.append(Filme(img: "Masterchef.jpg", nome: "Filme3", descricao: "xt of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a gall", estrelas: 2, avaliacoes: 300))
        arrayFilmes.append(Filme(img: "Masterchef.jpg", nome: "Filme4", descricao: "xt of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a gall", estrelas: 2, avaliacoes: 300))
        arrayFilmes.append(Filme(img: "Masterchef.jpg", nome: "Filme5r", descricao: "xt of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a gall", estrelas: 2, avaliacoes: 300))
        
        buttonConfirmar.layer.cornerRadius = 25
        buttonExcluir.layer.cornerRadius = 25
        
        tableViewMain.delegate = self
        tableViewMain.dataSource = self
        
    }

}

extension ViewController : UITableViewDelegate{
      
  }

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayFilmes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FilmesTableViewCell", for: indexPath) as! FilmesTableViewCell
        cell.setup(filme: arrayFilmes[indexPath.row])
        
        return cell
    }
    
    
}
      
