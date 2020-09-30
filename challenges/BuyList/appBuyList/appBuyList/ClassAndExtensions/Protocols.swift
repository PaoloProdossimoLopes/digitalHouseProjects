//
//  Protocols.swift
//  appBuyList
//
//  Created by Paolo Prodossimo Lopes on 28/09/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import Foundation
import UIKit

protocol ProductsProtocol {
    
    func ifProductExists(productName: String) -> Bool
    func getProduct(productName: String) -> Product?
    func addNewProduct(productName: String, quantity: Int)
    func updateProductQuantity(productName: String, newQuantity quantity: Int)
    func removeProduct(productName: String) -> Bool
    
}
