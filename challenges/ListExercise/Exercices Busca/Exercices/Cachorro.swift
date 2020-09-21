//
//  Cachorro.swift
//  Exercices
//
//  Created by Paolo Prodossimo Lopes on 18/09/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import Foundation

class Cachorro: SerVivo {
    var raca : String
    init(raca:String, nome:String){
        self.raca=raca
        super.init(nome:nome)
    }
}

extension Cachorro: FormatadorProtocol {
    func getFormatado() -> String {
        return "\(nome) \(raca)"
    }
    
//    func getFormatadoParaUsuario() -> String {
//
//    }
}
