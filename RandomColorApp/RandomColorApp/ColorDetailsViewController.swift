//
//  ColorDetailsViewController.swift
//  RandomColorApp
//
//  Created by Serdar Altındaş on 1.05.2023.
//

import UIKit

class ColorDetailsViewController: UIViewController {

    var color : UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = color ?? UIColor.yellow
    }
}
