//
//  ModalViewViewController.swift
//  DesafioSegmentedControl
//
//  Created by Paolo Prodossimo Lopes on 07/10/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit

class ModalViewViewController: UIViewController {
    
    var userModal:Pessoa?

    @IBOutlet weak var imageViewModal: UIImageView!
    
    @IBOutlet weak var arrayLabelName: UILabel!
    
    @IBAction func closePage(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayLabelName.text = userModal!.nome
        imageViewModal.image = UIImage(named: userModal!.imagem)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
