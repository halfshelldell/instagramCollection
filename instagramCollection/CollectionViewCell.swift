//
//  CollectionViewCell.swift
//  instagramCollection
//
//  Created by Lydell Simmons on 5/21/17.
//  Copyright © 2017 Lydell Simmons. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var MoreButtonOutlet: UIButton!
    @IBOutlet weak var ProfileImageView: UIImageView!
    @IBOutlet weak var DescriptionLabel: UILabel!
    @IBOutlet weak var ShareImageView: UIImageView!
    @IBOutlet weak var ProfileUserNameLabel: UILabel!
    
    override func awakeFromNib()
    {
        self.ProfileImageView.layer.cornerRadius = 35.0
        self.ProfileImageView.clipsToBounds = true
    }
}
