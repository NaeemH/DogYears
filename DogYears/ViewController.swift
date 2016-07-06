//
//  ViewController.swift
//  DogYears
//
//  Created by Naeem on 7/5/16.
//  Copyright © 2016 Naeem. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    let reuseIdentifier = "cell"
    var items = [
        SwagItem(title: "Corgi", imagePath: "corgi"),
        SwagItem(title: "Husky", imagePath: "husky"),
        SwagItem(title: "Retriever", imagePath: "retriever"),
        SwagItem(title: "Terrier", imagePath: "terrier"),
        SwagItem(title: "Poodle", imagePath: "poodle"),
        SwagItem(title: "Beagle", imagePath: "beagle"),
        SwagItem(title: "Rottweiler", imagePath: "rottweiler"),
        SwagItem(title: "Boxer", imagePath: "boxer"),
        SwagItem(title: "Great Dane", imagePath: "greatdane")
        
        //SwagItem(title: "", imagePath: ""),
        
        
        
//        "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48"
    ]
    
    // MARK: - UICollectionViewDataSource protocol
    
    //how many cells to create
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    
    //make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
       //cell.myLabel.text = self.items[indexPath.item!]
       //cell.backgroundImage.image = self.items[indexPath.item!]
        
        cell.backgroundColor = UIColor.cyan()
        cell.item = items[(indexPath as NSIndexPath).item]
        return cell
    }
    
    // MARK: - UICollectionViewDelegate protocol
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print("You selected cell #\(indexPath.item)!")
    }
}

/*
 override func viewDidLoad() {
 super.viewDidLoad()
 // Do any additional setup after loading the view, typically from a nib.
 }
 
 override func didReceiveMemoryWarning() {
 super.didReceiveMemoryWarning()
 // Dispose of any resources that can be recreated.
 }
 
 

*/
