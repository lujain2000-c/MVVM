//
//  PizzaModel.swift
//  Pizza(MVVM)
//
//  Created by لجين إبراهيم الكنهل on 04/11/1444 AH.
//

import Foundation
struct PizzaModel: Identifiable{
    var id = UUID()
   // var name: String
    var toppings: String
    var toppingPrice: String
}
