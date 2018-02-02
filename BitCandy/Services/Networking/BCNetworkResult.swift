//
//  BCURLResult.swift
//  BitCandy
//
//  Created by Thomas on 1/16/18.
//  Copyright © 2018 Bitcandy. All rights reserved.
//

import Foundation

protocol BCNetworkResultable {
    associatedtype Model
    
    //var result: Model { get }
}

enum BCNetworkResult<T>: BCNetworkResultable {
	case result(T)
	case error(BCNetworkError)
    
    typealias Model = T
    
//    var result: Model {
//        return BCNetworkResultConstructor<Model>(self)
//    }
}

enum BCNetworkError {
	case badResponse
	case jsonDeserializationFailure
}

struct BCNetworkResultConstructor<T> {
//    let data: T
    
//    init(_ result: BCNetworkResult<T>) {
//        self.data = result
//        
//        print(result)
//    }
}


