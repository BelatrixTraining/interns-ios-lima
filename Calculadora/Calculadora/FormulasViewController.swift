//
//  FormulasViewController.swift
//  Calculadora
//
//  Created by Arturo Gamarra on 11/3/18.
//  Copyright © 2018 Belatrix. All rights reserved.
//

import UIKit

class FormulasViewController: UIViewController, UITableViewDataSource, AgregarFormulaViewControllerDelegate {

    // MARK: - Properties
    @IBOutlet weak var tableView: UITableView!
    var formulas:[String] = []
    
    // MARK: - View Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        formulas = ["y = 3x+4", "y = x + 3", "x2 + y2 = z2"]
    }
    
    // MARK: - Navegacion
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AgregarFormulaSegue" {
            let destinoViewController = segue.destination
            let navController = destinoViewController as! UINavigationController
            let agregarVC = navController.viewControllers.first! as! AgregarFormulaViewController
            agregarVC.delegate = self
            
        }
    }

    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return formulas.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "formulaCell",
                                                 for: indexPath)
        let i = indexPath.row
        cell.textLabel?.text = formulas[i]
        return cell
    }
    
    // MARK: - AgregarFormulaViewControllerDelegate
    func agregarFormulaViewController(_ sender: AgregarFormulaViewController,
                                      didSaveFormula formula: String) {
        self.formulas.append(formula)
        self.tableView.reloadData()
        self.dismiss(animated: true, completion: nil)
    }

}
