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
//    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
//
//    }
    
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
        platoCell.plato = plato
        return platoCell
    }
    
    // MARK: - Navegacion
    override func shouldPerformSegue(withIdentifier identifier: String
        , sender: Any?) -> Bool {
        return false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinoVC = segue.destination as? PlatoInfoViewController,
            let cell = sender as? PlatoTableViewCell {
            destinoVC.plato = cell.plato
        }
    }
    
    // MARK: - UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let platoInfoVC = storyboard.instantiateViewController(withIdentifier: "PlatoInfoViewController")
        
        if let destinoVC = platoInfoVC as? PlatoInfoViewController {
            let plato = allPlatos[indexPath.row]
            destinoVC.plato = plato
            
            self.navigationController?.pushViewController(destinoVC, animated: true)
        }
    }
}






