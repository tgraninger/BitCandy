//
//  SplashViewController.swift
//  BitCandy
//
//  Created by Thomas on 1/15/18.
//  Copyright © 2018 Bitcandy. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {
	// Constants
	let kAuthenticationSegue = "showAuthenticationSegue"
	let kHomeSegue = "showHomeSegue"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
		
		verifyToken()
		
//		animateSplash()
    }
	
	func verifyToken() {
//		if let token = keychain["credentials"] {
//
//		}
		
		let segue = kAuthenticationSegue
		
		DispatchQueue.main.async {
			self.performSegue(withIdentifier: segue, sender: self)
		}
	}
	
	func animateSplash() {
		
	}
	
	// MARK: - Navigation
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "showAuthenticationSegue" {
			let destination = segue.destination as! AuthenticationViewController
			print(destination)
		}
	}
}
