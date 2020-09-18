//
//  Caneta.swift
//  Exercices
//
//  Created by Paolo Prodossimo Lopes on 18/09/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import Foundation

class Caneta{
    var marca:String
    init(marca:String){
        self.marca=marca
    }
}

extension Caneta: FormatadorProtocol {
    func getFormatado() -> String {
        return "\(marca)"
    }
    
//    func getFormatadoParaUsuario() -> String {
//        return "marca: \(marca) "
//    }
}
