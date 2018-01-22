//
//  BCNetworkingLayers.swift
//  BitCandy
//
//  Created by Thomas on 1/3/18.
//  Copyright © 2018 Bitcandy. All rights reserved.
//

import Foundation

struct AuthenticationServiceLayer: BCNetworkRequestOperationDelegate {
	var username: String
	var password: String
	var token: String?
	
	typealias T = BCUserProfile
	
	func request(completion: @escaping (BCNetworkResultType<BCUserProfile>) -> Void) {
		if token != nil {

		} else {
//			let request = BCNetworkRequestConfig.authentication.configureRequest()
//			print(request)
//			URLSession.shared.dataTask(with: request) { (data, response, error) in
//
//			}.resume()
		}
	}
}

struct ContentServiceLayer: BCNetworkRequestOperationDelegate {
	
	typealias T = [BCPost]
	
	func request(completion: @escaping (BCNetworkResultType<[BCPost]>) -> Void) {
		
	}
}









