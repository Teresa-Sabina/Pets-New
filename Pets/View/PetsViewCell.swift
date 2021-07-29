//
//  PetsViewCell.swift
//  Pets
//
//  Created by teresa sabina on 13/07/21.
//

import UIKit
import Kingfisher

class PetsViewCell: UICollectionViewCell {
    
    @IBOutlet weak var petImageView: UIImageView!
    @IBOutlet weak var breedName: UILabel!
    
    func setData(petDetails:(imageName:String, breadName:String)) {
        breedName.text = petDetails.breadName
        setPetImage(imageName:petDetails.imageName)
    }
    func setPetImage(imageName:String) {
        let url = URL(string: imageName)
        petImageView.kf.setImage(with: url)
    }
}
