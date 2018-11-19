//
//  PromotionListViewController.swift
//  Promociones
//
//  Created by Arturo Gamarra on 11/19/18.
//  Copyright © 2018 Belatrix. All rights reserved.
//

import UIKit

class PromotionListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // MARK: - Properties
    @IBOutlet weak var tableView:UITableView!
    var promotions:[Promotion] = []
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        var promotions:[Promotion] = []
        let promotionsJSON = PromocionesFactory.promociones()
        for json in promotionsJSON {
            let promotion = Promotion(json: json)
            promotions.append(promotion)
        }
        self.promotions = promotions
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? PromotionViewController,
            let cell = sender as? PromotionTableViewCell {
            destinationVC.promotion = cell.promotion
        }
    }

    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return promotions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: PromotionTableViewCell.identifier, for: indexPath)
        let promotionCell = cell as! PromotionTableViewCell
        let promotion = promotions[indexPath.row]
        promotionCell.promotion = promotion
        return promotionCell
    }
}
