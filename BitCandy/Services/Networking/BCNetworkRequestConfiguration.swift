//
//  BCNetworkRequestConfiguration.swift
//  BitCandy
//
//  Created by Thomas on 1/4/18.
//  Copyright © 2018 Bitcandy. All rights reserved.
//

import Foundation

protocol BCNetworkRequestConfigurationDelegate {
	var endpoint: String { get }
	var httpMethod: HTTPMethod { get }
	var parameters: [AnyHashable : Any] { get }
	var requestUrl: URL { get }
	
	func configureRequest() -> URLRequest
}

enum HTTPMethod: String {
	case get = "GET"
	case post = "POST"
	case patch = "PATCH"
	case delete = "DELETE"
	case put = "PUT"
}

enum BCNetworkRequestConfig {
	// Add any parameters for cases
	case authentication(username: String, password: String)
	case signUp
	case fetchPosts
	case createPost(post: BCPost)
}

extension BCNetworkRequestConfig: BCNetworkRequestConfigurationDelegate {
	
	static let baseUrl = "https://wordpressbackend/bitcandy"

	var endpoint: String {
		switch self {
		case .authentication: return "/auth/"
		case .signUp: return "/signup/"
		case .fetchPosts: return "/posts/"
		case .createPost: return "/postcomment/"
		}
	}
	
	var httpMethod: HTTPMethod {
		switch self {
		case .authentication: return .post
		case .signUp: return .post
		case .fetchPosts: return .get
		case .createPost: return .post
		}
	}
	
	var parameters: [AnyHashable : Any] {
		switch self {
		case .authentication(username: let u, password: let p): return ["username" : u , "password" : p]
		case .fetchPosts: return ["" : ""]
		case .createPost(post: let post): return post.serializeDictionary()
		default: return ["" : ""]
		}
	}
	
	var requestUrl: URL {
		return URL(string: "\(BCNetworkRequestConfig.baseUrl)\(endpoint)")!
	}
	
	func configureRequest() -> URLRequest {
		var request = URLRequest(url: requestUrl)
		request.httpMethod = httpMethod.rawValue
		request.httpBody = try! JSONSerialization.data(withJSONObject: parameters, options: [])
		
		return request
	}
}





