//
//  UsersTableViewCell.swift
//  Exercise1
//
//  Created by Paolo Prodossimo Lopes on 30/09/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit

class UsersTableViewCell: UITableViewCell {

    
    @IBOutlet weak var labelNameContentView: UILabel!
    @IBOutlet weak var labelCargoContentView: UILabel!
    @IBOutlet weak var labelEmailContentView: UILabel!
    
    
    func setup(users:Users){
        
        labelNameContentView.text=users.nome
        labelCargoContentView.text=users.cargo
        labelEmailContentView.text=users.email
        
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
