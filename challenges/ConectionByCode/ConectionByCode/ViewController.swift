//
//  ViewController.swift
//  ConectionByCode
//
//  Created by Paolo Prodossimo Lopes on 05/10/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var thisIsALabel:UILabel?
    @IBOutlet weak var thisIsAButton:UIButton?
    @IBOutlet weak var thisIsATextField:UITextField?
    @IBOutlet weak var thisIsALabel2:UILabel?
    @IBOutlet weak var thisIsASearchBar:UISearchBar?
    @IBOutlet weak var thisIsAImageView:UIImageView?
    
    
    @IBAction func thisIsAAction(){
        print("Tocou no botão")
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

