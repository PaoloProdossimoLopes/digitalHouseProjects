//
//  Pet.swift
//  Exercise 2
//
//  Created by Paolo Prodossimo Lopes on 03/10/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import Foundation
import  UIKit


class Pet{
    var name:String
    var peso:String
    var especie:String
    var raca: String
    
    init(name:String, peso:String, especie:String,  raca: String){
        self.name=name
        self.peso=peso
        self.raca=raca
        self.especie=especie
    }
}
