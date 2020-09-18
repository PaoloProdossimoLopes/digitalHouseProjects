//
//  PessoaFisica.swift
//  Exercices
//
//  Created by Paolo Prodossimo Lopes on 18/09/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import Foundation

class PessoaFisica : SerVivo {
    var cpf: String
    init(cpf:String, nome : String){
        self.cpf = cpf
        super.init(nome: nome)
    }
}

extension PessoaFisica: FormatadorProtocol {
    func getFormatado() -> String {
        return "\(nome) \(cpf)"
    }
    
    func getFormatadoParaUsuario() -> String {
        return "Pessoa Física: \(nome) \(cpf)"
    }
}
