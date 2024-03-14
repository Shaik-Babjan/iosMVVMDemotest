//
//  NetworkManager.swift
//  MVVMDEMO
//
//  Created by zaid on 14/03/24.
//

import Foundation

class NetworkManager {
    
    
   class func fetchData(urlString: String, completion:@escaping ([ProductModel]?, String?) -> Void) {
        guard let url = URL(string: urlString) else {
            return
        }
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let data {
                let dataModel = try? JSONDecoder().decode(Products.self, from: data)
                completion(dataModel?.products, nil)
            } else {
                completion(nil,"Error")
            }
        }
       task.resume()
    }
}
