//
//  BCURLRequest.swift
//  BitCandy
//
//  Created by Thomas on 1/4/18.
//  Copyright © 2018 Bitcandy. All rights reserved.
//

import Foundation

protocol BCNetworkRequestable {
    var urlRequest: URLRequest { get }
}

enum BCURLRequest: BCNetworkRequestable {
	case authentication
	case signUp
	case fetchPosts
	case createPost
    
    var urlRequest: URLRequest {
        return BCURLRequestConstructor(self).urlRequest
    }
}

struct BCURLRequestConstructor {
    static let baseUrl = "https://bitcandy.io/api"
    var urlRequest: URLRequest

    init(_ request: BCURLRequest) {
        let requestData = BCURLRequestConstructor.store[request] as! [String : Any]
        
        let httpMethod = requestData["httpMethod"] as! String
        let endpoint = requestData["endpoint"] as! String
        let url = URL(string: "\(BCURLRequestConstructor.baseUrl)\(endpoint)")!
        
        self.urlRequest = URLRequest(url: url)
        self.urlRequest.httpMethod = httpMethod
    }
    
    static let store: Dictionary<AnyHashable, Any> = [
        BCURLRequest.authentication : ["endpoint" : "/auth/",
                                       "httpMethod" : "POST"],
        BCURLRequest.signUp : ["endpoint" : "/signUp/",
                               "httpMethod" : "POST"],
        BCURLRequest.fetchPosts : ["endpoint" : "/posts/posts",
                                   "httpMethod" : "GET"],
        BCURLRequest.createPost : ["endpoint" : "/posts/post",
                                   "httpMethod" : "POST"]
    ]
}





