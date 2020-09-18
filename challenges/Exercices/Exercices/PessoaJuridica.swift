//
//  PessoaJuridica.swift
//  Exercices
//
//  Created by Paolo Prodossimo Lopes on 18/09/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import Foundation

class PessoaJuridica : SerVivo {
    var cnpj: String
    init(cnpj:String, nome : String){
        self.cnpj = cnpj
        super.init(nome: nome)
    }
}

extension PessoaJuridica: FormatadorProtocol {
    func getFormatado() -> String {
        return "\(nome) \(cnpj)"
    }
    
    func getFormatadoParaUsuario() -> String {
        return "Pessoa Juricia: \(nome) \(cnpj)"
    }
}

