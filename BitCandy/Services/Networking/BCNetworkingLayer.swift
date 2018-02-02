//
//  BCNetworkingLayer.swift
//  BitCandy
//
//  Created by Thomas on 1/3/18.
//  Copyright © 2018 Bitcandy. All rights reserved.
//

import Foundation


protocol BCNetworkable {
//    associatedtype T
    
//    var request: BCURLRequest { get }
}

/*  BCNetworkingServiceRoute - interactions that the app can have with the api.
    Given the route, we know:
        which endpoint to interact with,
        the http method,
        the data to post in the http body,
        the data we expect back
 
    The idea is to break it down so the network layer delegates responsibilities, and we
    can individually mock and unit test the:
        URLRequest and httpBody serialization,
        the URLSession - block that executes the request
        and the response / creating swift objects with data
 */

enum BCNetworkingServiceRoute: BCNetworkable {
    case auth
    case signUp
    case addPost
    case fetchPosts
    
}

struct BCNetworkingServiceHandler {

    init(route: BCNetworkingServiceRoute) {
        
    }
    
    func request() {
//        let session = BCNetworkSession(request: <#T##BCNetworkRequestConfiguration#>)
    }
}

//extension BCNetworkingServiceLayer {
//    typealias AuthenticationCompletionHandler = ((BCNetworkResultType<BCUserProfile>) -> ())
//    typealias SignUpCompletionHandler = ((BCNetworkResultType<BCUserProfile>) -> ())
//    typealias FetchPostsCompletionHandler = ((BCNetworkResultType<[BCPost]>) -> ())
//    typealias CreatePostCompletionHandler = ((BCNetworkResultType<Bool>) -> ())
//
//}









