//
//  ViewController.swift
//  Exercices
//
//  Created by Paolo Prodossimo Lopes on 18/09/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit

/*
Exercício 1:
Crie um app que...
Tenha uma classe Avião, que tem modelo e cidade.
Tenha uma classe PessoaFisica que tem nome e CPF.
Tenha uma classe PessoaJuridica que tem nome e CNPJ.
Tenha uma classe Cachorro, que tem nome e raça.
Tenha uma classe Caneta, que tem marca.
Coloque um UISearchBar na tela. Quando o usuário pesquisar, ele pode pesquisar por QUALQUER propriedade de qualquer objeto.
Deve haver uma label com a lista, quando o usuário pesquisar por outro termo, deve continuar pesquisando na lista completa, e nao só no resultado.
* Use protocolos para resolver.
*/



class ViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet weak var SearchBarPesquisa: UISearchBar!
    @IBOutlet weak var LabelText: UILabel!
    
    var arrayItens = [FormatadorProtocol]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        SearchBarPesquisa.delegate=self
        
        arrayItens.append(PessoaFisica(cpf: "000000000", nome: "Narlei") )
        arrayItens.append(PessoaJuridica(cnpj: "111111111", nome:  "Digital House") )
        arrayItens.append(Cachorro(raca: "Yorkshire", nome: "Lula"))
        arrayItens.append(Caneta(marca: "Bic"))
        arrayItens.append(Aviao(modelo: "Boing-737", cidade: "São Paulo"))
        
    }
    func pesquisar(textoDePesquisa:String){
        var arrayPesquisa = [FormatadorProtocol]()
        
        for item in arrayItens{
            if item.getFormatado().lowercased().contains(textoDePesquisa.lowercased()){
                arrayPesquisa.append(item)
            }
        }
        var outPut = ""
        for item in arrayPesquisa{
            outPut = "\(outPut) \n \(item.getFormatado())"
        }
        
        LabelText.text = outPut
        
    }
        
}
extension ViewController : UISearchBarDelegate {
    public func searchBarSearchButtonClicked(_ searchBar: UISearchBar){
        if let text = searchBar.text {
           pesquisar(textoDePesquisa:text)
            
        }
    }
}

