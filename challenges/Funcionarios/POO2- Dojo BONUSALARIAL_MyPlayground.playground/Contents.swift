import UIKit

class Funcionario {
    var nome: String
    var salario: Double
    var cpf: String
    
    init(nome: String, salario: Double, cpf: String) {
        self.nome = nome
        self.salario = salario
        self.cpf = cpf
    }
    func calculo(salario: Double) -> Double {
        return salario
    }
}


class Programador: Funcionario {
    var plataforma: String
    
    init(nome: String, salario: Double, cpf: String, plataforma: String) {
        self.plataforma = plataforma
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    override func calculo(salario: Double) -> Double {
        let bonusProg = salario * 0.20
        print(bonusProg)
        return bonusProg
    }
}


class Designer: Funcionario {
    var ferramenta: String
    
    init(nome: String, salario: Double, cpf: String, ferramenta: String) {
           self.ferramenta = ferramenta
           super.init(nome: nome, salario: salario, cpf: cpf)
    }
    override func calculo(salario: Double) -> Double {
        let bonusDesign =  salario * 0.15
        print(bonusDesign)
        return bonusDesign
    }
}

let funcionario1 = Programador(nome: "Bernardo",
                               salario: 2000.40,
                               cpf: "999.999.999-00",
                               plataforma: "iOs")

let funcionario2 = Designer(nome: "Gustavo",
                            salario: 4550.00,
                            cpf: "888.888.888-99",
                            ferramenta: "Photoshop")

funcionario1.calculo(salario: 2000.40)
funcionario2.calculo(salario: 4550.00)

