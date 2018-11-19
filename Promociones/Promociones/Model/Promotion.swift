//
//  Promotion.swift
//  Promociones
//
//  Created by Arturo Gamarra on 11/19/18.
//  Copyright © 2018 Belatrix. All rights reserved.
//

import Foundation

class Promotion {
    
    // MARK - Properties
    var id:Int = 0
    var title:String = ""
    var realPrice:Int = 0
    var sellPrice:Int = 0
    var discount:Double = 0
    var endDate:String = ""
    var detail:String = ""
    
    // MARK - Lifecycle
    init() {
        
    }
    
    init(json:[String:Any]) {
        id = json["promotionId"] as? Int ?? 0
        title = json["title"] as? String ?? ""
        realPrice = json["realPrice"] as? Int ?? 0
        sellPrice = json["sellPrice"] as? Int ?? 0
        
        let discount = json["discount"] as? Double ?? 0
        self.discount = discount * 100
        
        endDate = json["endDate"] as? String ?? ""
        detail = json["shortDescription"] as? String ?? ""
    }
    
}
