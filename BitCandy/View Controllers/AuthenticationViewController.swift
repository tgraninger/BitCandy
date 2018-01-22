//
//  AuthenticationViewController.swift
//  BitCandy
//
//  Created by Thomas on 1/16/18.
//  Copyright © 2018 Bitcandy. All rights reserved.
//

import UIKit

class AuthenticationViewController: UIViewController {

	@IBOutlet weak var usernameField: UITextField!
	@IBOutlet weak var passwordField: UITextField!
	
	override func viewDidLoad() {
        super.viewDidLoad()

        print("hey")
    }

	@IBAction func loginButtonPressed(_ sender: Any) {
//		guard 
	}
	
	override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
