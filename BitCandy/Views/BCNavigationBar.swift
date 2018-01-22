//
//  BCNavigationBar.swift
//  BitCandy
//
//  Created by Thomas on 1/17/18.
//  Copyright © 2018 Bitcandy. All rights reserved.
//

import UIKit

protocol BCNavigationBarDelegate {
	func performHamburgerMenuSelector()
	func performSearchSelector()
}

class BCNavigationBar {
	
	func setNavigationBar() {
		let screenSize: CGRect = UIScreen.main.bounds
		let navBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: screenSize.width, height: 50))
		let navItem = UINavigationItem(title: "boop")
		let doneItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: nil, action: #selector(searchButtonTapped))
		navItem.rightBarButtonItem = doneItem
		navBar.setItems([navItem], animated: false)
	}
	
	@objc func menuButtonTapped() {
		
	}
	
	@objc func searchButtonTapped() {
		
	}
}
