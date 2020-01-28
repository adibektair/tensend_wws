//
//  imagesWithTitleCVC.swift
//  Tensend
//
//  Created by Sultan on 1/28/20.
//  Copyright © 2020 Sultan. All rights reserved.
//

import UIKit

class ImagesWithTitleCVC: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        self.img.layer.cornerRadius = 29
    }

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var title: UILabel!
}
