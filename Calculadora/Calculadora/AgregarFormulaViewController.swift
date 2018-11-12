//
//  AgregarFormulaViewController.swift
//  Calculadora
//
//  Created by Arturo Gamarra on 11/3/18.
//  Copyright © 2018 Belatrix. All rights reserved.
//

import UIKit

// INTERFACE = PROTOCOL
protocol AgregarFormulaViewControllerDelegate: NSObjectProtocol {
    
    func agregarFormulaViewController(_ sender:AgregarFormulaViewController,
                                      didSaveFormula formula:String)
    
}


class AgregarFormulaViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var formulaTextField: UITextField!
    weak var delegate:AgregarFormulaViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancelarButtonTapped(_ sender: Any) {
        //self.view.becomeFirstResponder()
        //self.formulaTextField.resignFirstResponder()
        self.view.endEditing(true)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func aceptarButtonTapped(_ sender: Any) {
        self.view.endEditing(true)
        let formula = formulaTextField.text!
        // TODO: guardar formula
        self.delegate?.agregarFormulaViewController(self, didSaveFormula: formula)
        
    }
    
    // MARK: - UITextFieldDelegate
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {
        
        let cantidad = textField.text?.count
        let nuevosCantidad = string.count
        return (cantidad! + nuevosCantidad) < 15
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // TODO: guardar formula
        self.view.endEditing(true)
        return true
    }

}
