//
//  PessoasCollectionViewCell.swift
//  Exercise 4
//
//  Created by Paolo Prodossimo Lopes on 04/10/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit

class PessoasCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var LabelNome: UILabel!
    
    func setup(pessoas:Pessoas){
        LabelNome.text=pessoas.nome
    }
}
