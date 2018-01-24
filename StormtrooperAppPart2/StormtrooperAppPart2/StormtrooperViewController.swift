//
//  StormtrooperViewController.swift
//  StormtrooperAppPart2
//
//  Created by Sunny on 1/24/18.
//  Copyright © 2018 Tampa Hackerspace. All rights reserved.
//

import UIKit

class StormtrooperViewController: UIViewController {
    
    var trooper: StormtrooperClass?
    

    @IBAction func addToCartButton(_ sender: AnyObject) {
        print("Sunny pressed the button!")
    }
    @IBOutlet weak var trooperLabel: UILabel!
    @IBOutlet weak var trooperImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //trooperLabel.text = "Scout Trooper"
        //trooperImage.image = UIImage(named: "scout_trooper_BIG")
        
        if let p = trooper {
            trooperLabel.text = p.name
            if let i = p.trooperImage {
                trooperImage.image = UIImage(named: i)
            }
        }

        
    }

    
}
