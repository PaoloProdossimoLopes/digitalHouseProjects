//
//  ViewController.swift
//  appBuyList
//
//  Created by Paolo Prodossimo Lopes on 16/09/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK:Text Fields
    @IBOutlet weak var textFieldProduct: UITextField!
    @IBOutlet weak var textFieldQuantity: UITextField!
    
    
    //MARK:Buttons
    @IBOutlet weak var buttonSave: UIButton!
    @IBOutlet weak var buttonClear: UIButton!
    @IBOutlet weak var buttonDelete: UIButton!
    
    //MARK:Labeltext
    @IBOutlet weak var labelList: UILabel!
    
    
    var products = Products()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        enableDisableASaveClearButton()
        hideButtonDelete()
        
        textFieldProduct.delegate = self
        textFieldQuantity.delegate = self
        
    }
    
    //MARK: Save Button Settings
    @IBAction func buttonSave(_ sender: Any) {
            
            let productName = getTextFieldProductName()
            if products.ifProductExists(productName: productName) && ifTextFieldQuantityHasData(){
                
                let newQuantity = getTextFieldQuantity()
                let oldQuantity = products.getProduct(productName: productName)!.quantity
                
                products.updateProductQuantity(productName: productName, newQuantity: Int(newQuantity)!)
                
                alert(title: "Produto atualizado", message: "Atualizado a quantidade de \(oldQuantity) para \(newQuantity)")
                
                hideButtonDelete()
                
            }else {
                
                if ifTextFieldQuantityHasData() {
                    let quantity = getTextFieldQuantity()
                    
                    products.addNewProduct(productName: productName, quantity: Int(quantity)!)
                    
                    alert(title: "Produto Adicionado", message: "Produto Adicionado com sucesso")
                }
                
            }
            enableDisableASaveClearButton()
            clearFields()
            setListLabel()
            setTitleSaveButtonToSave()
        }
        
        //MARK:Clear Button Settings
        @IBAction func buttonClear(_ sender: Any) {
            clearFields()
            setTitleSaveButtonToSave()
        }// end clear buttons settings
        
        //MARK:Delete Button Settings
        @IBAction func buttonDelete(_ sender: Any) {
            
            let productName = getTextFieldProductName()
            
            if products.removeProduct(productName: productName) {
                alert(title: "Produto removido", message: "O produto \(productName) foi removido com sucesso.")
            }else {
                alert(title: "Erro!", message: "Não existe o produto \(productName).")
            }
            
            enableDisableASaveClearButton()
            hideButtonDelete()
            clearFields()
            setListLabel()
            setTitleSaveButtonToSave()
            
        }//end delete button settings
    
        //MARK: Clear fields
        func clearFields() {
            textFieldProduct.text = ""
            textFieldQuantity.text = ""
            labelList.text = ""
        }//end clear field
        
        func alert(title: String, message msg: String) {
            
            let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)

            let okAction = UIAlertAction(title: "OK", style: .cancel) { (UIAlertAction) in
            }
            
            alert.addAction(okAction)
            self.present(alert, animated: true) {
               
            }
        }
        
    }





