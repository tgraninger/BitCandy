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
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bootstrapCollectionView()
    }
    
    func bootstrapCollectionView() {
        collectionView.register(UINib(nibName: "PostCell", bundle: nil), forCellWithReuseIdentifier: "POST_CELL")
        
        guard let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout
            else { return }
        
        layout.estimatedItemSize = UICollectionViewFlowLayoutAutomaticSize
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
		return 20
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "POST_CELL", for: indexPath) as! PostCell
        
        cell.setData(BCPost())
        
		return cell
	}
}

extension HomeViewController: MenuViewHelperDelegate {
	
	func performSegue() {
		self.performSegue(withIdentifier: kOpenMenuSegue, sender: self)
	}
}

