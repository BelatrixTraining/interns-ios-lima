//
//  PlatosViewController.swift
//  Menu
//
//  Created by Arturo Gamarra on 11/10/18.
//  Copyright © 2018 Belatrix. All rights reserved.
//

import UIKit

class PlatosViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // MARK: - Properties
    @IBOutlet weak var tablewView: UITableView!
    var allPlatos:[Plato] = []
    
    // MARK: - Ciclo de Vida
    override func viewDidLoad() {
        super.viewDidLoad()
        // Setar la pantalla con valores
        allPlatos = PlatosFactory.crearPlatos()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // registrar observadores
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // iniciar animaciones
    }
    
    // MARK: - Ciclo de vida inverso
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    deinit {
        
    }
    
    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return allPlatos.count
        
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlatoTableViewCell",
                                                 for: indexPath)
        
        guard let platoCell = cell as? PlatoTableViewCell else {
            return cell
        }
        let plato = allPlatos[indexPath.row]
        platoCell.nombreLabel.text = plato.nombre
        platoCell.detalleLabel.text = plato.detalle
        platoCell.precioLabel.text = plato.precio.description
        platoCell.platoImageView.image = UIImage(named: plato.nombreImagen)
        return platoCell
    }
}






