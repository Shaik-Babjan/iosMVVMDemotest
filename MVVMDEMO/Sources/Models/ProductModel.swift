//
//  ProductModel.swift
//  MVVMDEMO
//
//  Created by zaid on 14/03/24.
//

import Foundation

struct Products: Codable {
    
    let products: [ ProductModel]
    let total: Int
    
}

struct ProductModel: Codable {
      
    
    let title: String
    let description: String
    let price: Int
    let brand: String
    
}
