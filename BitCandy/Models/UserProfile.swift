//
//  UserProfile.swift
//  BitCandy
//
//  Created by Thomas on 1/16/18.
//  Copyright © 2018 Bitcandy. All rights reserved.
//

import Foundation

struct BCUserProfile {
	var username: String
	var name: String
	
	init(username: String, name: String) {
		self.username = username
		self.name = name
	}
	
	init(_ data: [String : Any]) {
		self.username = data["username"] as? String ?? ""
		self.name = data["name"] as? String ?? ""
	}
}
