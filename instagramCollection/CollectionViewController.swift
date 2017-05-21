//
//  CollectionViewController.swift
//  instagramCollection
//
//  Created by Lydell Simmons on 5/21/17.
//  Copyright © 2017 Lydell Simmons. All rights reserved.
//

import UIKit

private let reuseIdentifier = "cell"

class CollectionViewController: UICollectionViewController {

    // profile image & profile name
    let profileImage = ["quas", "us", "outkast", "softer", "carti"]
    let shareImage = ["sahbabii", "stones", "softer", "mikechristmas", "carti"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func likeButton(_ sender: Any)
    {
        print("Like...")
    }
    
    @IBAction func saveButton(_ sender: Any)
    {
        print("Save...")
    }

    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return profileImage.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CollectionViewCell
    
        cell.ProfileImageView.image = UIImage(named: self.profileImage[indexPath.row])
        cell.ProfileUserNameLabel.text = self.profileImage[indexPath.row]
        cell.ShareImageView.image = UIImage(named: self.shareImage[indexPath.row])
        cell.DescriptionLabel.text = self.profileImage[indexPath.row]
        
        cell.MoreButtonOutlet.addTarget(self, action: #selector(click), for: .touchUpInside)
        
        
        return cell
    }
    
    func click()
    {
        print("More...")
    }

    
}
