//
//  MyCollectionViewCell.swift
//  DogYears
//
//  Created by Naeem on 7/5/16.
//  Copyright © 2016 Naeem. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet var backgroundImage: UIImageView!
    
    
    var item: SwagItem? {
    
        didSet {
            guard let item = item else {
                return
            }
            
            myLabel.text = item.title
            myLabel.textColor = UIColor.white()
            backgroundImage.image = UIImage(named: item.imagePath)
        }
    }
}
