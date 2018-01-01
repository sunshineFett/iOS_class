//
//  StromtrooperViewController.swift
//  StormtroopersAppPart2
//
//  Created by Sunny on 12/30/17.
//  Copyright © 2017 Tampa Hackerspace. All rights reserved.
//

import UIKit

class StromtrooperViewController: UIViewController {


    @IBOutlet weak var TrooperLabel: UILabel!
    @IBOutlet weak var TrooperBigImage: UIImageView!
    
    var trooper: StormtrooperClass?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //TrooperLabel.text = "Scout Trooper"
        //TrooperBigImage.image = UIImage(named: "scout_trooper_BIG")
        
        
        if let p = trooper {
            TrooperLabel.text = p.name
            if let i = p.trooperImage {
                TrooperBigImage.image = UIImage(named: i)
            }
        }

    }

    @IBAction func addToCartPressed(_ sender: AnyObject) {
        print("Button tapped")
    }
}
