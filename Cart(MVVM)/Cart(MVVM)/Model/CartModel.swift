//
//  CartModel.swift
//  Cart(MVVM)
//
//  Created by لجين إبراهيم الكنهل on 05/11/1444 AH.
//

import Foundation
struct CartModel: Identifiable{
    var id = UUID()
    var name: String
    var price: String
    var imageName: String
}
