import UIKit
/*
 Um vendedor de loja e possui nome, idade e cpf, saldo em conta vende em sua loja ternos, vestidos e bonés
definir um método vender (quantidadeDePecas: Int, tipoDePeca: String).
Cada terno custa 400 reais,caso o cliente compre 3 ou mais ternos, ele recebe 50 de desconto para cada terno.
Cada vestido custa 900 reais,caso o cliente compre 5 vestidos ele ganha um véu de noiva (que custa 250 reais de brinde.
Cada boné custa 50 reais, e para cada 2 bonés vendidos, o terceiro é grátis, logo não haverá lucro.
Encapsule todos os métodos necessários.
*/

class Produtos{
    var precoTerno:Double = 400
    var descontoTerno:Double = 50
    var precoVestido:Double = 900
    var precoBone:Double = 50
    var precoVeu:Double = 250
    
}
class Vendedor: Produtos {
    private var nome: String
    private var idade: Int
    private var cpf: String
    private var saldoEmConta: Double
    
    init(nome: String, idade: Int, cpf: String, saldoEmConta: Double) {
        self.nome = nome
        self.idade = idade
        self.cpf = cpf
        self.saldoEmConta = saldoEmConta
    }
    
    
    
    public func getSaldoEmConta() -> Double  {
        return(self.saldoEmConta)
    }
    
    private func setSaldoEmConta(_ valor: Double) {
        self.saldoEmConta += valor
    }
    
    public func vender(quantidadeDePecas: Int, tipoDePeca: String) {
        var valorDaVenda: Double = 0
        if(tipoDePeca == "terno") {
            if(quantidadeDePecas < 3) {
                valorDaVenda = Double(quantidadeDePecas) * precoTerno
              
            }
            else {
                valorDaVenda = Double(Double(quantidadeDePecas) * precoTerno) - Double(descontoTerno * Double(quantidadeDePecas))
                
            }
        }
        else if(tipoDePeca == "vestido") {
            if(quantidadeDePecas < 5) {
                valorDaVenda = Double(quantidadeDePecas) * precoVestido
                
            }
            else {
                valorDaVenda = Double(Double(quantidadeDePecas) * precoVestido) - precoVeu
                print("Você Ganhou um Véu de brinde")
              
            }
        }
        else if(tipoDePeca == "bone") {
            valorDaVenda = Double(Double(quantidadeDePecas) * precoBone)
            let qntBrindes = quantidadeDePecas / 3
            
            if(qntBrindes > 0) {
                valorDaVenda -=  Double(valorDaVenda - Double(precoBone * Double(qntBrindes)))
                
            }
        }

        setSaldoEmConta(valorDaVenda)
    }
}


//TESTES

let vendedor = Vendedor(nome: "Paolo", idade: 20, cpf: "XXX.XXX.XXX-XX", saldoEmConta: 0)

vendedor.vender(quantidadeDePecas: 2, tipoDePeca: "terno")
print("Saldo: R$\(vendedor.getSaldoEmConta())")


vendedor.vender(quantidadeDePecas: 20, tipoDePeca: "vestido")
print("Saldo: R$\(vendedor.getSaldoEmConta())")


vendedor.vender(quantidadeDePecas: 2, tipoDePeca: "vestido")
print("Saldo: R$\(vendedor.getSaldoEmConta())")


vendedor.vender(quantidadeDePecas: 2, tipoDePeca: "bone")
print("Saldo: R$\(vendedor.getSaldoEmConta())")
