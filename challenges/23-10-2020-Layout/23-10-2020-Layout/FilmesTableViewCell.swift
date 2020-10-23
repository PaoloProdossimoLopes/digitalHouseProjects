//
//  FilmesTableViewCell.swift
//  23-10-2020-Layout
//
//  Created by Paolo Prodossimo Lopes on 23/10/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit

class FilmesTableViewCell: UITableViewCell {
    
    //MARK:Outlets
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var labelTextNomeFilme: UILabel!
    @IBOutlet weak var imgEstrelas: UIImageView!
    @IBOutlet weak var labelTextAvaliacoes: UILabel!
    @IBOutlet weak var labelTextDescricao: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        
        
    }
    
    //MARK:Setup
    func setup (filme:Filme){
        labelTextNomeFilme.text = filme.nome
        labelTextAvaliacoes.text = "(\(filme.avaliacoes) avaliações)"
        labelTextDescricao.text = filme.descricao
        imgView.image = UIImage(named: filme.img)
        
    }
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
