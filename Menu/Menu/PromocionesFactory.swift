//
//  PromocionesFactory.swift
//  Menu
//
//  Created by Arturo Gamarra on 11/17/18.
//  Copyright © 2018 Belatrix. All rights reserved.
//

import Foundation

class PromocionesFactory {
    
    class func promociones() -> [[String:Any]] {
        
        let promo1:[String:Any] = [
            "promotionId": 1,
            "title": "4 noches para dos en Las Casitas del Colca",
            "realPrice": 1500,
            "sellPrice": 750,
            "discount": 0.5,
            "currency": "S/.",
            "favorite": false,
            "shortDescription": "Desde S/.449 por 2, 3 o 4 noches para dos + desayuno buffet con opción a actividades en Las Casitas del Colca",
            "initialDate": "02/02/2017 13:00:00",
            "endDate": "02/04/2017 13:00:00",
            "stock": 1000,
            "stockPorPersona": 2]
        let promo2:[String:Any] = [
            "promotionId": 2,
            "title": "4 noches para dos en Las Casitas del Colca",
            "realPrice": 1500,
            "sellPrice": 750,
            "discount": 0.5,
            "currency": "S/.",
            "favorite": false,
            "shortDescription": "Desde S/.449 por 2, 3 o 4 noches para dos + desayuno buffet con opción a actividades en Las Casitas del Colca",
            "initialDate": "02/02/2017 13:00:00",
            "endDate": "02/04/2017 13:00:00",
            "stock": 1000,
            "stockPorPersona": 2
        ]
        let promo3:[String:Any] = [
            "promotionId": 3,
            "title": "Parrillada + Vino",
            "realPrice": 180,
            "sellPrice": 89,
            "discount": 0.51,
            "currency": "S/.",
            "favorite": false,
            "shortDescription": "S/.89 en vez de S/.180 por parrilla para dos + guarnición + 2 copas de vino o chicha morada en El Salto del Fraile",
            "initialDate": "02/02/2017 13:00:00",
            "endDate": "02/04/2017 13:00:00",
            "stock": 1000,
            "stockPorPersona": 1000
        ]
        let promo4:[String:Any] = [
            "promotionId": 4,
            "title": "Spa para dos",
            "realPrice": 400,
            "sellPrice": 59,
            "discount": 0.75,
            "currency": "S/.",
            "favorite": true,
            "shortDescription": "Desde S/.59 por spa relajante para uno o romántico para dos con reflexología + chocolaterapia en Vita Lima Spa",
            "initialDate": "02/02/2017 13:00:00",
            "endDate": "02/04/2017 13:00:00",
            "stock": 10,
            "stockPorPersona": 1000
        ]
        
        let promociones = [promo1, promo2, promo3, promo4]
        return promociones
    }
    
}
