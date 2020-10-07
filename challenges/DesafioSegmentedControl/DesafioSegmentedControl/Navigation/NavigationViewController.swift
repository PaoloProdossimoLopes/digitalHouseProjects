//
//  NavigationViewController.swift
//  DesafioSegmentedControl
//
//  Created by Paolo Prodossimo Lopes on 07/10/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit

class NavigationViewController: UIViewController {

    @IBOutlet weak var imageViewNavigation: UIImageView!
    
    
    var userNavigation : Pessoa?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = userNavigation!.nome
        imageViewNavigation.image = UIImage(named: userNavigation!.imagem)
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
