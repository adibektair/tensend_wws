//
//  FirstBannerView.swift
//  Tensend
//
//  Created by Sultan on 1/28/20.
//  Copyright © 2020 Sultan. All rights reserved.
//

import UIKit
import EasyPeasy

class FirstBannerView: UIView,UICollectionViewDelegate {

    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout.init())
    let stackView = UIStackView()
    
    var colors = [#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1),#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1),#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)]
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        life()
        sizes()
    }
 
    func sizes(){
        self.addSubview(collectionView)
        collectionView.easy.layout(Edges(),Height(187))
        stackView.setProperties(axis: .vertical, alignment: .fill, spacing: 10, distribution: .fill)
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
        }
//        stackView.addArrangedSubview(collectionView)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
extension FirstBannerView: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout  {
    func life(){
         collectionView.register(OnlyImageCVC.self, forCellWithReuseIdentifier: "OnlyImageCVC")
         self.collectionView.delegate = self
         self.collectionView.dataSource = self
     }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OnlyImageCVC", for: indexPath) as! OnlyImageCVC
        cell.layer.cornerRadius = 8
        cell.image.backgroundColor = colors[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = collectionView.frame.size
        let s = CGSize(width: size.width - 60, height: 187)
        return s
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("tapped")
    }
    func collectionView(_ collectionView: UICollectionView, willDisplaySupplementaryView view: UICollectionReusableView, forElementKind elementKind: String, at indexPath: IndexPath) {
        
    }
    
    
}



