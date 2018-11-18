//
//  PlatoInfoViewController.swift
//  Menu
//
//  Created by Arturo Gamarra on 11/17/18.
//  Copyright © 2018 Belatrix. All rights reserved.
//

import UIKit

class PlatoInfoViewController: UIViewController {

    // MARK: - Propiedades
    @IBOutlet weak var platoImageView: UIImageView!
    @IBOutlet weak var platoLabel: UILabel!
    @IBOutlet weak var precioLabel: UILabel!
    @IBOutlet weak var detailTextView: UITextView!
    var plato:Plato?
    
    // MARK: - Ciclo de vida
    override func viewDidLoad() {
        super.viewDidLoad()

        self.platoImageView.image = plato?.imagen
        self.platoLabel.text = plato?.nombre
        self.detailTextView.text = plato?.detalle
        
        if let unPlato = plato {
            self.precioLabel.text = "S/ \(unPlato.precio.description)"
        }
        print(self.platoImageView.frame)
        print(self.platoImageView.bounds)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
