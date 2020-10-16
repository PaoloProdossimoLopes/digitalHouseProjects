//
//  ViewController.swift
//  GestureChallenge
//
//  Created by Paolo Prodossimo Lopes on 16/10/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelText: UILabel!
    
    @IBOutlet weak var viewOne: UIView!
    @IBOutlet weak var viewTwo: UIView!
    @IBOutlet weak var viewThree: UIView!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(add))
        let swipe = UISwipeGestureRecognizer(target: self, action: #selector(remove))
        let long = UILongPressGestureRecognizer(target: self, action: #selector(add))
        
        
        viewOne.addGestureRecognizer(tap)
        viewTwo.addGestureRecognizer(swipe)
        viewThree.addGestureRecognizer(long)
        
    }
    @objc func handleTap(_ sender: UITapGestureRecognizer){
        print("Tap")
    }
    @objc func handleSwipe(_ sender: UISwipeGestureRecognizer){
        print("Swipe")
    }
    @objc func handleLong(_ sender: UILongPressGestureRecognizer){
        print("Long")
    }
    @objc func add(){
        count += 1
        updateResults()
    }
    @objc func remove(){
        count -= 1
        updateResults()
    }
    
    func updateResults(){
        labelText.text = "\(count)"
        print(count)
    }
}

