//
//  Extensions.swift
//  appBuyList
//
//  Created by Paolo Prodossimo Lopes on 28/09/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import Foundation
import UIKit


extension ViewController {
    
    func ifTextFieldProductHasData() -> Bool {
        if let _ = textFieldProduct.text, textFieldProduct.text != "" {
            return true
        }
        return false
    }
    
    func getTextFieldProductName() -> String {
        return textFieldProduct.text!
    }
    
    func ifTextFieldQuantityHasData() -> Bool {
        if let _ = textFieldQuantity.text, textFieldQuantity.text != "" {
            return true
        }
        return false
    }
    
    func getTextFieldQuantity() -> String {
        return textFieldQuantity.text!
    }
    
    func setTextFieldQuantity(quantity: String) {
        textFieldQuantity.text = quantity
    }
    
    func setListLabel() {
        
        for product in products.arrayProducts {
            labelList.text = "\(labelList.text!)\(product.quantity) X \(product.name)\n"
        }
    }
}


extension ViewController {
    
    func hideButtonDelete() {
        buttonDelete.isHidden = true
    }
    
    func unhideButtonDelete() {
        buttonDelete.isHidden = false
    }
    
    func setTitleSaveButtonToUpdate() {
        buttonSave.setTitle("Update", for: .normal)
    }
    
    func setTitleSaveButtonToSave() {
        buttonSave.setTitle("Save", for: .normal)
    }
    
    func enableDisableASaveClearButton() {
        
        buttonSave.isEnabled = !buttonSave.isEnabled
        buttonClear.isEnabled = !buttonClear.isEnabled
        
        let ifButtonsAreEnable = buttonSave.isEnabled
        
        if ifButtonsAreEnable {
            upButtonOpacity()
        }else {
            downButtonOpacity()
        }
    }
    
    func downButtonOpacity() {
        buttonSave.alpha = 0.2
        buttonClear.alpha = 0.2
    }
    
    func upButtonOpacity() {
        buttonSave.alpha = 1.0
        buttonClear.alpha = 1.0
    }
    
}

extension ViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == textFieldProduct {
            if let product = textFieldProduct.text, textFieldProduct.text != "" {
                enableDisableASaveClearButton()
                textFieldQuantity.becomeFirstResponder()
                
                if products.ifProductExists(productName: product) {
                    let product = products.getProduct(productName: product)
                    
                    setTextFieldQuantity(quantity: String(product!.quantity))
                    unhideButtonDelete()
                    setTitleSaveButtonToUpdate()
                }
            }
        }
        
        
        func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
            if textField == textFieldProduct {
                if let product = textFieldProduct.text, textFieldProduct.text != "" {
                    enableDisableASaveClearButton()
                    textFieldQuantity.becomeFirstResponder()
                    
                    if products.ifProductExists(productName: product) {
                        let product = products.getProduct(productName: product)
                        
                        setTextFieldQuantity(quantity: String(product!.quantity))
                        unhideButtonDelete()
                        setTitleSaveButtonToUpdate()
                    }
                }
            }
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        enableDisableASaveClearButton()
        self.textFieldDidEndEditing(textField)
        return true
    }
    
}
