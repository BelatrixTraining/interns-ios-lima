//
//  CalculadoraViewController.swift
//  Calculadora
//
//  Created by Arturo Gamarra on 10/27/18.
//  Copyright © 2018 Belatrix. All rights reserved.
//

import UIKit

class CalculadoraViewController: UIViewController {

    
    @IBOutlet weak var resultadoLabel: UILabel!
    var operacion:String = ""
    var oldNumber:String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        resultadoLabel.text = ""
    }

    @IBAction func button9Tapped(_ sender: UIButton) {
        print(sender.titleLabel!.text!)
        
        let numero = sender.titleLabel!.text!
        let numeroActual = resultadoLabel.text!
        var resutado = numeroActual + numero
        resutado += ""
        resultadoLabel.text = resutado
    }
    
    @IBAction func plusButtonTapped(_ sender: UIButton) {
        self.operacion = sender.titleLabel!.text!
        self.oldNumber = resultadoLabel.text!
        self.resultadoLabel.text = ""
    }
    
    @IBAction func equalButtonTapped(_ sender: UIButton) {
        switch operacion {
        case "+":
            let old = Int(self.oldNumber)!
            let actual = Int(resultadoLabel.text!)!
            let resultado = old + actual
            self.resultadoLabel.text = "\(resultado)"
        default:
            print("Operacion no soportada")
        }
    }
}
