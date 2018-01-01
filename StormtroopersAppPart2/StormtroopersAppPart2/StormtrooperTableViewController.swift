//
//  StormtrooperTableViewController.swift
//  StormtroopersAppPart2
//
//  Created by Sunny on 12/31/17.
//  Copyright © 2017 Tampa Hackerspace. All rights reserved.
//

import UIKit

class StormtrooperTableViewController: UITableViewController {
    
    var troopers: [StormtrooperClass]?

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // To change for final product
        let trooper1 = StormtrooperClass()
        let trooper2 = StormtrooperClass()
        let trooper3 = StormtrooperClass()
        let trooper4 = StormtrooperClass()
        
        trooper1.name = "Scout Trooper"
        trooper1.cellImage="scout_troopers_label"
        trooper1.trooperImage="scout_trooper_BIG"
        
        trooper2.name = "First Order Trooper"
        trooper2.cellImage="first_order_stormtrooper_label"
        trooper2.trooperImage="first_order_troopers_BIG"
        
        trooper3.name = "Snow Trooper"
        trooper3.cellImage="snow_troopers_label"
        trooper3.trooperImage="snowtroopers_BIG"
        
        trooper4.name = "Death Trooper"
        trooper4.cellImage="death_trooper_label"
        trooper4.trooperImage="death_troopers_BIG"
        
        
        troopers = [trooper1, trooper2, trooper3, trooper4]
        
        
        
        if let sNames = troopers {
            print("number of troopers is",sNames.count)
            return sNames.count
        }
        return 0
        
        //return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StormtrooperCell", for: indexPath)
        
        
        // To teach the concept
        //cell.textLabel?.text = "Hello Stormtrooper!"
        //cell.imageView?.image = UIImage(named: "scout_troopers_label")
        
        
        let trooper = troopers?[indexPath.row]
        
        if let sName = trooper {
            cell.textLabel?.text = sName.name
            if let i = sName.cellImage {
                cell.imageView?.image = UIImage(named: i)
                
            }
        }
        
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "ShowTrooper"{
            let trooperVC = segue.destination as? StromtrooperViewController
            
            
            //get the cell that was tapped
            guard let cell = sender as? UITableViewCell,
                let indexPath = tableView.indexPath(for: cell) else {
                    return
            }
            
            //get the index path for that cell
            //use the index path to get the productName from the array
            //send the product name to the product view controller
            trooperVC?.trooper = troopers?[indexPath.row]
            
        }
    }
 
}
