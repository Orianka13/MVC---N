//
//  NetworkService.swift
//  MVC - N
//
//  Created by Олеся Егорова on 19.06.2021.
//

import UIKit

class NetworkService {
    private init() {}
    static let shared = NetworkService()
    
    public func getData(url: URL, completion: @escaping (Any) -> ()){
        let session = URLSession.shared
        session.dataTask(with: url){ (data, response, error) in
            guard let data = data else { return }
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                DispatchQueue.main.async {
                    completion(json)
                }
            } catch {
                print(error)
            }
        } .resume()
    }
}
