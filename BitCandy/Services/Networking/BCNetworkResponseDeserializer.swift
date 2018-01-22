//
//  BCNetworkResponseDeserializer.swift
//  BitCandy
//
//  Created by Thomas on 1/16/18.
//  Copyright © 2018 Bitcandy. All rights reserved.
//

import Foundation

enum BCNetworkResultType<T> {
	case result(T)
	case error(BCNetworkError)
}

enum BCNetworkError {
	case badResponse
	case jsonDeserializationFailure
}

protocol BCNetworkResultDelegate {
	associatedtype T
	
	func deserializeData(_ data: [String : Any]) -> T
}


