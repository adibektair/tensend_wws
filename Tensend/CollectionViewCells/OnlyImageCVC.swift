//
//  OnlyImageCVC.swift
//  Tensend
//
//  Created by Sultan on 1/28/20.
//  Copyright © 2020 Sultan. All rights reserved.
//

import UIKit
import EasyPeasy
class OnlyImageCVC: UICollectionViewCell {
    let image = UIImageView()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.addSubview(image)
        self.image.easy.layout(Edges())
    }
    
}
