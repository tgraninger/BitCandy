//
//  PostCell.swift
//  BitCandy
//
//  Created by Thomas Graninger on 1/27/18.
//  Copyright © 2018 Bitcandy. All rights reserved.
//

import UIKit

class PostCell: UICollectionViewCell {

    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var postTitle: UILabel!
    @IBOutlet weak var postTags: UILabel!
    
    var isHeightDetermined: Bool = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    
    func setData(_ post: BCPost) {
        self.postImageView.image = #imageLiteral(resourceName: "splash_image")
        self.postTitle.text = "BITCANDY TEST"
        self.postTags.text = "BITCANDY\nIS\nTHE\nCOOLEST\nTHING\nEVER"
    }
    
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        setNeedsLayout()
        layoutIfNeeded()
        
        let size = contentView.systemLayoutSizeFitting(layoutAttributes.size)
        
        var newFrame = layoutAttributes.frame
        newFrame.size.height = ceil(size.height)
        
        layoutAttributes.frame = newFrame
        
        isHeightDetermined = true
        
        return layoutAttributes
    }
}
