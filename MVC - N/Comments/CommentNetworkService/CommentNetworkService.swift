//
//  CommentNetworkService.swift
//  MVC - N
//
//  Created by Олеся Егорова on 19.06.2021.
//

import Foundation

class CommentNetworkService {
    private init() {}
    
    static func getComments(completion: @escaping(GetCommentResponse) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments") else { return }
        NetworkService.shared.getData(url: url) { (json) in
            
        }
    }
}
