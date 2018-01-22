//
//  HomeViewControllerViewModel.swift
//  BitCandy
//
//  Created by Thomas on 1/15/18.
//  Copyright © 2018 Bitcandy. All rights reserved.
//

import Foundation

protocol HomeViewControllerViewModelDelegate: class {
	func getPosts()
}

class HomeViewControllerViewModel: HomeViewControllerViewModelDelegate {
	weak var delegate: HomeViewControllerViewModelDelegate!
	
	func getPosts() {
		
	}
	
}


