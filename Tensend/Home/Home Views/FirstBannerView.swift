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

//    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout.init())
    let stackView = UIStackView()
    
    lazy var collectionView : UICollectionView = {
           let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
           layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
           layout.itemSize = CGSize(width: self.frame.width, height: self.frame.height)
           layout.scrollDirection = .horizontal
           layout.minimumLineSpacing = 0
           layout.minimumInteritemSpacing = 0
           let cv = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
           //If you set it false, you have to add constraints.
           cv.translatesAutoresizingMaskIntoConstraints = false
           cv.delegate = self
           cv.dataSource = self
           cv.register(OnlyImageCVC.self, forCellWithReuseIdentifier: "cell")
           cv.backgroundColor = .black
           cv.isScrollEnabled = true
           cv.isPagingEnabled = true
           return cv
       }()
    
    var colors = [#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1),#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1),#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)]
    var color = #imageLiteral(resourceName: "Снимок экрана -3")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        life()
        sizes()
    }
 
    func sizes(){
        self.addSubview(collectionView)
        collectionView.easy.layout(Edges(),Height(187))
//        stackView.setProperties(axis: .vertical, alignment: .fill, spacing: 10, distribution: .fill)
//        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
//            layout.scrollDirection = .horizontal
//        }
//        stackView.addArrangedSubview(collectionView)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
extension FirstBannerView: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout  {
    func life(){
//         collectionView.register(OnlyImageCVC.self, forCellWithReuseIdentifier: "OnlyImageCVC")
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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! OnlyImageCVC
        cell.layer.cornerRadius = 8
        cell.image.image = #imageLiteral(resourceName: "Снимок экрана 2020-01-03 в 17.33.28")
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



