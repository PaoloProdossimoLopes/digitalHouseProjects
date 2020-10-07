//
//  ListUserTableViewCell.swift
//  DesafioSegmentedControl
//
//  Created by Paolo Prodossimo Lopes on 07/10/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit

class ListUserTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imageViewUser: UIImageView!
    @IBOutlet weak var labelTextName: UILabel!
    
    var user : Pessoa?
   
    func setup(pessoa:Pessoa, option:SelectedClass ) {
        imageViewUser.image = UIImage(named: pessoa.imagem)
        labelTextName.text = pessoa.nome
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
