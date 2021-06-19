//
//  GetCommentResponse.swift
//  MVC - N
//
//  Created by Олеся Егорова on 19.06.2021.
//

import Foundation

struct GetCommentResponse {
    
    typealias JSON = [String: AnyObject]
    
    let comments: [Comment]
    
    init(json: Any) throws {
        guard let array = json as? [JSON] else { throw NetworkError.failInternetError }
        
        var comments = [Comment]()
        
        for dictionary in array {
            guard let comment = Comment(dict: dictionary) else { continue }
            comments.append(comment)
        }
        self.comments = comments
    }
}