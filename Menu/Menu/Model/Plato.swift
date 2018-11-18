//
//  Plato.swift
//  Menu
//
//  Created by Arturo Gamarra on 11/10/18.
//  Copyright © 2018 Belatrix. All rights reserved.
//

import Foundation
import UIKit

class Plato: NSObject {
    
    // MARK: - Propiedades
    var precio:Double = 0.0
    var nombre:String = ""
    var detalle:String = ""
    var nombreImagen:String = ""
    
    // MARK: - Computed properties
    var imagen:UIImage? {
        return UIImage(named: self.nombreImagen)
    }
    
    // MARK: - Constructores
    override init() {
        super.init()
    }
    
    init(json:[String:String]) {
        if let nombre = json["nombre_plato"] {
            self.nombre = nombre
        }
        self.detalle = json["descripcion_plato"] ?? ""
        self.nombreImagen = json["archivo_plato"] ?? ""
        
        if let precioStr = json["precio_plato"],
            let precio = Double(precioStr) {
            self.precio = precio
        }
        
    }
}
