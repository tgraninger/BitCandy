//
//  BCNetworkRequestOperation.swift
//  BitCandy
//
//  Created by Thomas on 1/9/18.
//  Copyright © 2018 Bitcandy. All rights reserved.
//

import Foundation

protocol BCNetworkRequestOperationDelegate {
	associatedtype T
	
	func request(completion: @escaping (BCNetworkResultType<T>) -> Void)
}

