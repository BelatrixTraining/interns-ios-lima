//
//  PlatoTableViewCell.swift
//  Menu
//
//  Created by Arturo Gamarra on 11/10/18.
//  Copyright © 2018 Belatrix. All rights reserved.
//

import UIKit

class PlatoTableViewCell: UITableViewCell {

    @IBOutlet weak var platoImageView: UIImageView!
    @IBOutlet weak var nombreLabel: UILabel!
    @IBOutlet weak var detalleLabel: UILabel!
    @IBOutlet weak var precioLabel: UILabel!
    
    var plato:Plato! {
        willSet {
            print("Old value: \(String(describing: self.plato))")
            print("New Value: \(String(describing: newValue))")
        }
        didSet {
            print("Old value: \(String(describing: oldValue))")
            print("New Value: \(String(describing: self.plato))")
            self.nombreLabel.text = plato.nombre
            self.detalleLabel.text = plato.detalle
            self.precioLabel.text = plato.precio.description
            self.platoImageView.image = plato.imagen
        }
    }
    
    // JAVA
    /*
    public Void setPlato(Plato plato) {
        // will set
        this.plato = plato
        // did set
    }
    */
    
}
