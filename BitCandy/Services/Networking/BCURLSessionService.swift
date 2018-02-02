//
//  BCURLSessionService.swift
//  BitCandy
//
//  Created by Thomas on 1/9/18.
//  Copyright © 2018 Bitcandy. All rights reserved.
//

import Foundation

protocol BCURLSessionable {
    associatedtype T
    
    func request()
}

enum BCURLSession {
    case data
    case download
    case upload
    

}


//struct BCURLSession<T>: BCURLSessionable {
//
//    init(_ request: BCURLRequest) {
//
//    }
//
//    func request(_ configuration: BCNetworkRequestConfiguration, completion: BCNetworkResultType<T>) {
//
//    }
//}

