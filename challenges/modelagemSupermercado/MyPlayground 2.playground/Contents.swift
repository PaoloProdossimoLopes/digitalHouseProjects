import UIKit

class Pessoa{
    //Tem:
    var nome: String
    var idade: Double
    var cpf:String
    var endereco:String
    var email:String
    var telefone:String
    
    //Construtor= initializer
    init(nome:String, idade:Double, cpf:String, endereco:String, email:String, telefone:String) {
        self.nome=nome
        self.idade=idade
        self.cpf=cpf
        self.endereco=endereco
        self.email=email
        self.telefone=telefone
    }
    
    //metodos
    func cadastrarPessoas(){
        print("Me cadastrar, ")
    }
    func atualizarCadastro(){
        print("Atualizar meu cadastro e ")
    }
    func excluirCadastro(){
        print("Excluir meu cadastro.")
    }
    
    //chamando as funcoes
    func chamadaPessoa(){
        cadastrarPessoas(); atualizarCadastro(); excluirCadastro()
    }
}//FIM DA CLASSE PESSOA

class Funcionario: Pessoa{
    //tem:
    var cargo: String
    var franquia:String
    var salario:Double
    
    //contrutor:
    init(nome:String, idade:Double, cpf:String, endereco:String, email:String, telefone:String, cargo: String, franquia:String, salario:Double) {
        self.cargo = cargo
        self.franquia = franquia
        self.salario = salario
        super.init(nome: nome, idade: idade, cpf: cpf, endereco: endereco, email: email, telefone: telefone)
    }
    
    //faz:
    func definirTurno(){
        print("Definir os turnos,")
    }
    func definirFolga(){
        print("Definir as folgas e")
    }
    func organizarEstoque(){
        print("Organizar o estoque.")
    }
    
    //funcoes de funcionario
    func FuncoesFuncionario(){
        definirFolga(); definirTurno(); organizarEstoque()
    }
    //Se apresenando
    func apresentaçãoFuncionario(){
        print("Olá meu nome é \(nome), tenho \(idade) anos")
        print("Sou portador da cedula de cpf \(cpf), e atualemnte moro na \(endereco) ")
        print("caso queira entrar em contato comigo porvafor me envie uma menasgem para o email : \(email) ou me ligue nesse numero : \(telefone)")
        print("Um pouco mais sobre mim:")
        print("trabalho no supermercado, sou encarregado do cargo de \(cargo) na franquia \(franquia) e recebo R$\(salario)")
        print("Minhas principais tarefas são:" )
        FuncoesFuncionario()
        print ("Mas como qualquer pessoa posso realizar as seguintes funções:")
        chamadaPessoa()
        
    }
        
}//FIM CLASSE FUNCIONARIO
class Cliente: Pessoa{
    //tem:
    var numeroDoCartao: String
    var codigoDaCompra:String
    var formaDePagamento:String
    
    //contrutor:
    init(nome:String, idade:Double, cpf:String, endereco:String, email:String, telefone:String, numeroDoCartao: String, codigoDaCompra:String, formaDePagamento:String) {
        self.numeroDoCartao = numeroDoCartao
        self.codigoDaCompra = codigoDaCompra
        self.formaDePagamento = formaDePagamento
        super.init(nome: nome, idade: idade, cpf: cpf, endereco: endereco, email: email, telefone: telefone)
    }
    
    //faz:
    func efetuarPagamento(){
        print("fazer o pagamento")
    }
    func fazerPedido(){
        print("Realizar o pedido")
    }
    func consultarProduto(){
        print("Consultar produto")
    }
    
    func funcCliente(){
        consultarProduto();fazerPedido();efetuarPagamento()
    }
    
    //chamada cliente
    func apresentaçãoCliente(){
        print("Olá meu nome é \(nome), tenho \(idade) anos")
        print("Sou portador da cedula de cpf \(cpf), e atualemnte moro na \(endereco) ")
        print("caso queira entrar em contato comigo porvafor me envie uma menasgem para o email : \(email) ou me ligue nesse numero : \(telefone)")
        print("Um pouco mais sobre mim:")
        print("Eu eu vou ao supermercado todos os dias com meu cartao de numero \(numeroDoCartao), escolho o produto de codigo \(codigoDaCompra) e pago com o mesmo \(formaDePagamento)")
        print("As coisas que eu mais faço no mercaddo são:" )
        funcCliente()
        print ("Mas como qualquer pessoa posso realizar as seguintes funções:")
        chamadaPessoa()
        
    }
        
}//FIM CLASSE CLIENTE


//test Funcionario
let paolo = Funcionario(nome: "Paolo", idade: 20, cpf: "999.999.999-9", endereco: "rua lala, n32", email: "paolo.prodossimo.lopes@gmail.com", telefone: "(99)99999-9999", cargo: "Gerente", franquia: "00", salario: 2000)

/* alguns testes
print(paolo.nome)
print(paolo.idade)
print(paolo.cpf)
print(paolo.telefone)
print(paolo.email)
print(paolo.cargo)
print(paolo.salario)
paolo.cadastrarPessoas()
 */


paolo.apresentaçãoFuncionario()

print("\n---------------------\n")

//teste cliente
let carlos = Cliente(nome: "Carlos", idade: 25, cpf: "999.999.999-1", endereco: "rua lassss, n345", email: "carlos@gmail.com", telefone: "+55 (11)11111-1111", numeroDoCartao: "2134676", codigoDaCompra: "#2347898", formaDePagamento: "Cartao")

carlos.apresentaçãoCliente()
