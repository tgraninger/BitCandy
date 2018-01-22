//
//  MenuViewHelper.swift
//  BitCandy
//
//  Created by Thomas on 1/15/18.
//  Copyright © 2018 Bitcandy. All rights reserved.
//

import UIKit

protocol MenuViewHelperDelegate: class {
	func performSegue()
}

struct MenuViewHelper {
	weak var delegate: MenuViewHelperDelegate!
	
	func edgePanGesture(_ sender: UIScreenEdgePanGestureRecognizer, view: UIView, interactor: Interactor) {
		let translation = sender.translation(in: view)
		
		let progress = MenuHelper.calculateProgress(translation, viewBounds: view.bounds, direction: .right)
		
		MenuHelper.mapGestureStateToInteractor(sender.state, progress: progress, interactor: interactor) {
				self.delegate.performSegue()
		}
	}
}
