//
//  ViewController.swift
//  Tensend
//
//  Created by Sultan on 1/24/20.
//  Copyright © 2020 Sultan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Variables
    
    // MARK: Outlets
    
    @IBOutlet weak var phoneView: UIView!{
        didSet{
            
        }
    }
    @IBOutlet weak var topImageHeightConstraint: NSLayoutConstraint!{
        didSet{
            self.topImageHeightConstraint.constant = UIScreen.main.bounds.height * 0.33
        }
    }
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

