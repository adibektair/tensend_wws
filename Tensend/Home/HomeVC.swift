//
//  HomeVC.swift
//  Tensend
//
//  Created by Sultan on 1/26/20.
//  Copyright © 2020 Sultan. All rights reserved.
//

import UIKit

class HomeVC: ScrollStackController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stackView.backgroundColor = #colorLiteral(red: 0.9529411765, green: 0.9607843137, blue: 0.9764705882, alpha: 1)
        setElements()
    }
    
    func setElements(){
        let title = UILabel()
        title.setProperties( textColor: #colorLiteral(red: 0.2039215686, green: 0.262745098, blue: 0.337254902, alpha: 1), textAlignment: .center)
        title.setProperties(textColor: #colorLiteral(red: 0.2039215686, green: 0.262745098, blue: 0.337254902, alpha: 1), font: .systemFont(ofSize: 20, weight: .medium), textAlignment: .center)
        title.text = "Cәлеместіз бе, Қайрат!"
        stackView.addArrangedSubview(title)
        
        let info = UILabel()
        let infoText = "Tensend-ке саяхаттап, өзіңіз үшін әлемнің шексіз білімін ашыңыз"
        info.setProperties(text: infoText, textColor: #colorLiteral(red: 0.2039215686, green: 0.262745098, blue: 0.337254902, alpha: 1), textAlignment: .center, numberLines: 2)
        stackView.addArrangedSubview(info)
        let firstBanner = FirstBannerView()
        stackView.addArrangedSubview(firstBanner)
        
        let cats = CategoriesView()
        stackView.addArrangedSubview(cats)
    }
    
    
}
