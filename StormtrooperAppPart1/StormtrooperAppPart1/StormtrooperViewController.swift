//
//  StormtrooperViewController.swift
//  StormtrooperAppPart1
//
//  Created by Sunny on 1/24/18.
//  Copyright © 2018 Tampa Hackerspace. All rights reserved.
//

import UIKit

class StormtrooperViewController: UIViewController {

    @IBAction func addToCartPressed(_ sender: AnyObject) {
        print("I tapped the button!")
        
        
    }
    @IBOutlet weak var trooperLabel: UILabel!
    @IBOutlet weak var trooperImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        trooperLabel.text = "Scout Trooper"
        trooperImageView.image = UIImage(named: "scout_trooper_BIG")
    }

}
