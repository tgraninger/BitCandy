//
//  BCAlertConfiguration.swift
//  BitCandy
//
//  Created by Thomas on 1/20/18.
//  Copyright © 2018 Bitcandy. All rights reserved.
//

import UIKit

protocol BCAlertable {
	var alertData: BCAlertDataStore { get }
    
    func setActions(_ alertController: UIAlertController)
}

enum BCAlertConfiguration: BCAlertable {
	case invalidCredentials
	case networkError
	case logout
	
	var alertData: BCAlertDataStore {
		return BCAlertDataStore(configuration: self)
	}
    
    func setActions(_ alertController: UIAlertController) {
        for action in alertData.actions {
            alertController.addAction(action.configureAction())
        }
    }
}
