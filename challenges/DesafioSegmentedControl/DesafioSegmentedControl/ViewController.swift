//
//  ViewController.swift
//  DesafioSegmentedControl
//
//  Created by Paolo Prodossimo Lopes on 07/10/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var check : SelectedClass = .pessoa

    @IBOutlet weak var tableViewList: UITableView!
    
    
    @IBOutlet weak var segmentControllPeople: UISegmentedControl!
    
    @IBAction func selectedSegmentControllPeople(_ sender: Any) {
        switch segmentControllPeople.selectedSegmentIndex{
            
            case 0 :
//                print(segmentControllPeople.selectedSegmentIndex)
                check = .pessoa
                print(check)
            case 1:
//             print(segmentControllPeople.selectedSegmentIndex)
                check = .programador
                print(check)
            default:
                break
        }
       tableViewList.reloadData()
    }
    
    
    var arrayPessoas = [Pessoa]()
    var arrayProgramadores = [Pessoa]()
    
    override func viewDidLoad() {
        
        title = "List"
        
        super.viewDidLoad()
        tableViewList.delegate = self
        tableViewList.dataSource = self
        
        arrayPessoas.append(Pessoa(nome: "NomeDePessoa", imagem: "ImagemPessoa.png"))
        arrayPessoas.append(Pessoa(nome: "NomeDePessoa", imagem: "ImagemPessoa.png"))
        arrayPessoas.append(Pessoa(nome: "NomeDePessoa", imagem: "ImagemPessoa.png"))
        arrayPessoas.append(Pessoa(nome: "NomeDePessoa", imagem: "ImagemPessoa.png"))
        
        
        arrayProgramadores.append(Pessoa(nome: "NomeDoProgramador", imagem: "ImagemProgramador.png"))
        arrayProgramadores.append(Pessoa(nome: "NomeDoProgramador", imagem: "ImagemProgramador.png"))
        arrayProgramadores.append(Pessoa(nome: "NomeDoProgramador", imagem: "ImagemProgramador.png"))
        arrayProgramadores.append(Pessoa(nome: "NomeDoProgramador", imagem: "ImagemProgramador.png"))
        
        tableViewList.reloadData()
        
    }


}

extension ViewController:UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if check == .pessoa{
           //modal
            if let viewModal = UIStoryboard(name: "ModalView", bundle: nil).instantiateInitialViewController() as? ModalViewViewController{
                viewModal.userModal = arrayPessoas[indexPath.row]
                present(viewModal,animated: true)
            }
        }
        else{
            //navigation
            if let viewNavigation = UIStoryboard(name: "Navigation", bundle: nil).instantiateInitialViewController() as? NavigationViewController{
                viewNavigation.userNavigation = arrayProgramadores[indexPath.row]
                navigationController?.pushViewController(viewNavigation, animated: true)
            }
        }
        tableViewList.deselectRow(at: indexPath, animated: true)
    }
    
    
}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if check == .pessoa{
           return arrayPessoas.count
        }
        else{
            return arrayProgramadores.count
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewList.dequeueReusableCell(withIdentifier: "ListUserTableViewCell", for: indexPath) as! ListUserTableViewCell
        
        if check == .pessoa{
            cell.setup(pessoa: arrayPessoas[indexPath.row], option: .pessoa)
        }
        else{
            cell.setup(pessoa: arrayProgramadores[indexPath.row], option: .programador)
        }
        
        
        return cell
    }
    
    
}
