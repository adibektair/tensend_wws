//
//  MeditationCVC.swift
//  Tensend
//
//  Created by Sultan on 2/10/20.
//  Copyright © 2020 Sultan. All rights reserved.
//

import UIKit

class MeditationCVC: UICollectionViewCell {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var time: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        img.layer.cornerRadius = 5
        img.layer.masksToBounds = true
    }

}
