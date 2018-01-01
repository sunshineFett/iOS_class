//
//  CreditsViewController.swift
//  StormtroopersAppPart2
//
//  Created by Sunny on 12/30/17.
//  Copyright © 2017 Tampa Hackerspace. All rights reserved.
//

import UIKit

class CreditsViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.addSubview(scrollView)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        scrollView.contentSize = CGSize(width: 375, height: 800)
    }

}
