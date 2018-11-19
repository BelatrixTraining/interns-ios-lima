//
//  PromotionTableViewCell.swift
//  Promociones
//
//  Created by Arturo Gamarra on 11/19/18.
//  Copyright © 2018 Belatrix. All rights reserved.
//

import UIKit

class PromotionTableViewCell: UITableViewCell {

    // MARK: - Constants
    static let identifier = "PromotionCell"
    
    // MARK: - Properties
    @IBOutlet weak var promotionImageView: UIImageView!
    @IBOutlet weak var promotionLabel: UILabel!
    @IBOutlet weak var discountLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var expirationDateLabel: UILabel!
    
    var promotion:Promotion! {
        didSet {
            promotionLabel.text = promotion.title
            discountLabel.text = "\(promotion.discount)%"
            priceLabel.text = "S/ \(promotion.sellPrice)"
            expirationDateLabel.text = promotion.endDate
        }
    }
}
