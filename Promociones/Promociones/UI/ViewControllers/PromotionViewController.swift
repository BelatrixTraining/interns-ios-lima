//
//  PromotionViewController.swift
//  Promociones
//
//  Created by Arturo Gamarra on 11/19/18.
//  Copyright © 2018 Belatrix. All rights reserved.
//

import UIKit

class PromotionViewController: UIViewController {

    // MARK: - Properties
    @IBOutlet weak var promotionImageView: UIImageView!
    @IBOutlet weak var promotionLabel: UILabel!
    @IBOutlet weak var discountLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var expirationDateLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    var promotion:Promotion?
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        promotionLabel.text = promotion?.title
        expirationDateLabel.text = promotion?.endDate
        descriptionTextView.text = promotion?.detail
        
        if let promotion = self.promotion {
            discountLabel.text = "\(promotion.discount)%"
            priceLabel.text = "S/ \(promotion.sellPrice)"
        }
        
    }

}
