//
//  ProductViewModel.swift
//  MVVMDEMO
//
//  Created by zaid on 14/03/24.
//

import Foundation

class ProductViewModel {
    
    var products = [ProductModel]()
    func getProducts(completion:@escaping () -> Void){
        let urlString = "https://dummyjson.com/products";
        NetworkManager.fetchData(urlString: urlString) { products, error in
            if let products {
                self.products = products
                completion()
            }
        }
    }
}
