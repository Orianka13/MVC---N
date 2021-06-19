//
//  Comment.swift
//  MVC - N
//
//  Created by Олеся Егорова on 18.06.2021.
//

import Foundation

struct Comment {
    var postId: Int
    var id: Int
    var name: String
    var email: String
    var body: String
    
    init?(dict: [String: AnyObject]) { //делаем failable init для json
        guard let postId = dict["postId"] as? Int,
              let id = dict["id"] as? Int,
              let name = dict["name"] as? String,
              let email = dict["email"] as? String,
              let body = dict["body"] as? String
              else { return nil }
        //после извлечения значений можем их присвоить в нашу структуру
        self.postId = postId
        self.id = id
        self.name = name
        self.email = email
        self.body = body
    }
}
