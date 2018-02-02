//
//  BCHTTPBody.swift
//  BitCandy
//
//  Created by Thomas Graninger on 1/23/18.
//  Copyright © 2018 Bitcandy. All rights reserved.
//

import Foundation

protocol BCHTTPBodyable {
    var httpBody: Data { get }
}

enum BCHTTPBody: BCHTTPBodyable {
    case string(string: String)
    case dictionary([AnyHashable : Any])
    case array([Any])
    
    // Should implement bool and number, also.
    var httpBody: Data {
        switch self {
        case .string(string: let s):
            return BCHTTPBodyConstructor<String>(s).httpBody
        case .dictionary(let d):
            return BCHTTPBodyConstructor<[AnyHashable : Any]>(d).httpBody
        case .array(let a):
            return BCHTTPBodyConstructor<[Any]>(a).httpBody
        }
    }
}

struct BCHTTPBodyConstructor<T> {
    let httpBody: Data
    
    init(_ params: T) {
        let data = try! JSONSerialization.data(withJSONObject: params, options: [])
        
        self.httpBody = data 
    }
}
