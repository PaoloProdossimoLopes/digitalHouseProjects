//
//  Class.swift
//  appBuyList
//
//  Created by Paolo Prodossimo Lopes on 28/09/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import Foundation


//MARK:Class Product
//create father class for my products
class Product {
    var name: String
    var quantity: Int
    
    init(name: String, quantity: Int) {
        self.name = name
        self.quantity = quantity
    }
}//end of my class Product

//MARK:Class Products
//create children class
class Products: ProductsProtocol {
    var arrayProducts = [Product]()
    
    func ifProductExists(productName: String) -> Bool {
        for product in arrayProducts {
            if product.name.lowercased() == productName.lowercased() {
                return true
            }
        }
        return false
    }
    
    
    func getProduct(productName: String) -> Product? {
        for product in arrayProducts {
            if product.name == productName {
                return product
            }
        }
        return nil
    }
    
    
    func addNewProduct(productName: String, quantity: Int) {
        let product = Product(name: productName, quantity: quantity)
        arrayProducts.append(product)
    }
    
    
    func updateProductQuantity(productName: String, newQuantity quantity: Int) {
        for product in arrayProducts {
            if product.name == productName {
                product.quantity = quantity
                break
            }
        }
    }
    
    func removeProduct(productName: String) -> Bool {
        var x = 0
        
        while x < arrayProducts.count {
            if arrayProducts[x].name == productName {
                arrayProducts.remove(at: x)
                return true
            }
            
            x += 1
        }
        
        return false

    }
    
    
}




protocol ProductsProtocol {
    
    func ifProductExists(productName: String) -> Bool
    func getProduct(productName: String) -> Product?
    func addNewProduct(productName: String, quantity: Int)
    func updateProductQuantity(productName: String, newQuantity quantity: Int)
    func removeProduct(productName: String) -> Bool
    
}

