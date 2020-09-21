//
//  Aviao.swift
//  Exercices
//
//  Created by Paolo Prodossimo Lopes on 18/09/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import Foundation

class Aviao{
    var modelo : String
    var cidade : String
    
    init(modelo: String, cidade: String){
        self.modelo = modelo
        self.cidade = cidade
    }
}

extension Aviao: FormatadorProtocol {
    func getFormatado() -> String {
        return "\(modelo) \(cidade)"
    }
    
//    func getFormatadoParaUsuario() -> String {
//    
//    }
}
