//
//  BCAlertActionConfiguration.swift
//  BitCandy
//
//  Created by Thomas on 1/20/18.
//  Copyright © 2018 Bitcandy. All rights reserved.
//

import UIKit

protocol BCAlertActionable {
    func configureAction() -> UIAlertAction
}

enum BCAlertActionConfiguration: BCAlertActionable {
    case okAction
    case cancelAction
    case navigationAction
    case logoutAction
    
    func configureAction() -> UIAlertAction {
        let data = BCAlertActionDataStore(configuration: self)
        
        return UIAlertAction(title: data.title, style: data.style, handler: nil)
    }

}

