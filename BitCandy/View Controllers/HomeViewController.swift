//
//  HomeViewController.swift
//  BitCandy
//
//  Created by Thomas on 1/11/18.
//  Copyright © 2018 Bitcandy. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
	
	// Constants
	let kOpenMenuSegue = "openMenuSegue"
	
	// Vars
	
	
	// Outlets

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

extension HomeViewController: UICollectionViewDataSource {
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 0
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		
		return UICollectionViewCell()
	}
	
	
}

extension HomeViewController: MenuViewHelperDelegate {
	
	func performSegue() {
		self.performSegue(withIdentifier: kOpenMenuSegue, sender: self)
	}
}

