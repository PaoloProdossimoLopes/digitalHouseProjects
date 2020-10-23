//
//  Filme.swift
//  23-10-2020-Layout
//
//  Created by Paolo Prodossimo Lopes on 23/10/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import Foundation

class Filme{
    
    var img:String
    var nome:String
    var descricao:String
    var estrelas: Int
    var avaliacoes: Int
    
    init(img:String, nome:String, descricao:String, estrelas: Int, avaliacoes: Int) {
        self.img=img
        self.nome=nome
        self.descricao=descricao
        self.estrelas=estrelas
        self.avaliacoes=avaliacoes
    }
    
}
