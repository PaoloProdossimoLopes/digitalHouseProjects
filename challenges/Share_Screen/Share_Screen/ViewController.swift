//
//  ViewController.swift
//  Share_Screen
//
//  Created by Paolo Prodossimo Lopes on 16/11/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFielShareText: UITextField!
    
    
    
    @IBAction func shareAll(_ sender: Any) {
        
        let text = textFielShareText.text
        
        let shareAll = [text]
    
        let activityViewController = UIActivityViewController(activityItems: shareAll, applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view
        self.present(activityViewController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

