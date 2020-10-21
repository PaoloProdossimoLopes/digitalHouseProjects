//
//  ViewController.swift
//  AnimationChallenger
//
//  Created by Paolo Prodossimo Lopes on 21/10/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit

/*Exercício 1: Crie um app que:
    - Tenha uma view 50x50 x:0 y:0 na view principal.
    - Ao dar um tap nessa view, deve adicionar uma nova view do mesmo tamanho abaixo da que recebeu o tap.
    - A nova view deve ter um tap que tenha o mesmo comportamento.
    - Quando acabar o espaço em tela, deve adicionar uma view no centro da view principal que se anime até ficar do tamanho da tela toda.
    - Quando terminar a animação ela deve ficar branca.
    - Ao ficar branca, você deve remover todas as subviews da view principal e adicionar novamente a primeira view para começar o ciclo novamente.
 */

import UIKit

class ViewController: UIViewController {
    
    //MARK:VARs
    var positionYInitial = 20
    var positionYCurrent = 20
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //call function
        createView()
    }

    @objc func createView() {
        
        let newView = UIView(frame: CGRect(x: (Int(self.view.frame.size.width / 2) - 25 ), y: positionYCurrent, width: 50, height: 50))
        
        newView.backgroundColor = .random
        
        view.addSubview(newView)
        
        positionYCurrent += 50
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(createView))
        newView.addGestureRecognizer(tap)
        
        animateAndRemoveSubviews()
    }
    
    func animateAndRemoveSubviews() {
        if(Float(positionYCurrent) > Float(self.view.frame.size.height)) {
            
            let animatedView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
            
            animatedView.backgroundColor = .white
            
            view.addSubview(animatedView)
            
            animatedView.center = view.center
            
            
            UIView.animate(withDuration: 2, animations: {
                 animatedView.frame = self.view.frame
                }, completion: { (true) in
                    self.positionYCurrent = self.positionYInitial
                    self.view.subviews.forEach{$0.removeFromSuperview()
                        
                    }
                    self.createView()
                }
            )
        }
    }
    
}


//random collor
extension UIColor {
  static var random: UIColor {
    return .init(hue: .random(in: 0...1), saturation: 1, brightness: 1, alpha: 1)
  }
}

