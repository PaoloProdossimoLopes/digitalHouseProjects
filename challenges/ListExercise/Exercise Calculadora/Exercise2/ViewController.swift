//
//  ViewController.swift
//  Exercise2
//
//  Created by Paolo Prodossimo Lopes on 19/09/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

/*
Exercício 2:
Crie um app que...
Tenha uma classe Calculadora.
Essa calculadora deve ser instanciada sem nenhum parametro.
Não é possível acessar propriedades por fora da classe.
Existem os métodos:
- Somar
- Subtrair
- Dividir
- Multiplicar
Nesses métodos, será possível passar 2 parametros, e deverá retornar o resultado matemático.
O segundo parametro deve ser opcional, sendo que se eu passar só o primeiro, deve retornar o primeiro numero sem ser alterador por contas.
MAS se eu já tiver feito uma operação antes, ele deve armazenar o total, e quando eu passar só um parametro, deve levar em conta o resultado já existente.
Ex:
somar(1,1)
retorna 2
dividir(1,nil)
retorna 2
Ex:
somar(1, nil)
retorna 1
Não deve haver prints na classe da calculadora.
*/

import UIKit

class ViewController: UIViewController {
    
    //MARK:Visores
    @IBOutlet weak var VisorDePassos: UILabel!
    
    @IBOutlet weak var VisorDeCalculo: UILabel!
    
    //MARK:Numeros
    @IBOutlet weak var BTN0: UIButton!
    @IBOutlet weak var BTN1: UIButton!
    @IBOutlet weak var BTN2: UIButton!
    @IBOutlet weak var BTN3: UIButton!
    @IBOutlet weak var BTN4: UIButton!
    @IBOutlet weak var BTN5: UIButton!
    @IBOutlet weak var BTN6: UIButton!
    @IBOutlet weak var BTN7: UIButton!
    @IBOutlet weak var BTN8: UIButton!
    @IBOutlet weak var BTN9: UIButton!
    
    //MARK:Operadores
    @IBOutlet weak var BTNSomar: UIButton!
    @IBOutlet weak var BTNMultiplicar: UIButton!
    @IBOutlet weak var BTNSubitrair: UIButton!
    @IBOutlet weak var BTNDividir: UIButton!
    @IBOutlet weak var BTNPorcentagem: UIButton!
    @IBOutlet weak var BTNIgual: UIButton!
    
    //MARK:Especial
    @IBOutlet weak var BTNZerar: UIButton!
    @IBOutlet weak var BTNVirgula: UIButton!
    @IBOutlet weak var BTNMaisEMenos: UIButton!
    
    //MARK:Arredondar botoes
    func arrendondarBotoes(){
        //Numeros
        BTN0.layer.cornerRadius = BTN0.frame.size.height/2
        BTN1.layer.cornerRadius = BTN1.frame.size.height/2
        BTN2.layer.cornerRadius = BTN2.frame.size.height/2
        BTN3.layer.cornerRadius = BTN3.frame.size.height/2
        BTN4.layer.cornerRadius = BTN4.frame.size.height/2
        BTN5.layer.cornerRadius = BTN5.frame.size.height/2
        BTN6.layer.cornerRadius = BTN6.frame.size.height/2
        BTN7.layer.cornerRadius = BTN7.frame.size.height/2
        BTN8.layer.cornerRadius = BTN8.frame.size.height/2
        BTN9.layer.cornerRadius = BTN9.frame.size.height/2
        //Operadores
        BTNSomar.layer.cornerRadius = BTNSomar.frame.size.height/2
        BTNMultiplicar.layer.cornerRadius = BTNMultiplicar.frame.size.height/2
        BTNSubitrair.layer.cornerRadius = BTNSubitrair.frame.size.height/2
        BTNDividir.layer.cornerRadius = BTNDividir.frame.size.height/2
        BTNPorcentagem.layer.cornerRadius = BTNPorcentagem.frame.size.height/2
        BTNIgual.layer.cornerRadius = BTNIgual.frame.size.height/2
        //Especial
        BTNZerar.layer.cornerRadius = BTNZerar.frame.size.height/2
        BTNVirgula.layer.cornerRadius = BTNVirgula.frame.size.height/2
        BTNMaisEMenos.layer.cornerRadius = BTNMaisEMenos.frame.size.height/2
    }//fim da funcao arrendondarBotoes()
    
    
    
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

