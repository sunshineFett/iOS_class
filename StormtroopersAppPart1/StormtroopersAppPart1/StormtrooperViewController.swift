//
//  StormtrooperViewController.swift
//  StormtroopersAppPart1
//
//  Created by Sunny on 12/30/17.
//  Copyright © 2017 Tampa Hackerspace. All rights reserved.
//

import UIKit

class StormtrooperViewController: UIViewController {

    @IBOutlet weak var scoutImageView: UIImageView!
    @IBOutlet weak var ScoutLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ScoutLabel.text = "Scout Trooper"
        scoutImageView.image = UIImage(named: "scout_trooper_BIG")
        //or can use ImageLiteral
    }


}
