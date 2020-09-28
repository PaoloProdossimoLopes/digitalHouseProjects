//
//  DeveloperCellTableViewCell.swift
//  TableViewExercise
//
//  Created by Paolo Prodossimo Lopes on 28/09/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit

class DeveloperCellTableViewCell: UITableViewCell {

    @IBOutlet weak var imageViewPerfil: UIImageView!
    @IBOutlet weak var labelNameDeveloper: UILabel!
    @IBOutlet weak var labelEmailDeveloper: UILabel!
    
    func setup (developer : Developers){
        labelNameDeveloper.text = developer.name
        labelEmailDeveloper.text=developer.email
        imageViewPerfil.image = UIImage(named: developer.imageURL)
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
