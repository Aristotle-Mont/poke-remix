//
//  ViewController.swift
//  VoLLLL
//
//  Created by Danilo Montalvo  on 9/28/17.
//  Copyright © 2017 Danilo Montalvo . All rights reserved.
//

import UIKit


//                                   Delegate4collectionView   Hold Data4CollectionView
class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource,
UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collection: UICollectionView!
//1
    var cookie = [Cookie]()
//
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        collection.dataSource = self
        collection.delegate = self
    

//2
        parseCookieCSV()
//
        
        
        
//        let = Cookie(name: "Baxic", itemPrice: 45)
    }
    
    
    
//3
    func parseCookieCSV() {
        let path = Bundle.main.path(forResource: "cookie", ofType: "csv")!
        
        do {
            
            let csv = try CSV(contentsOfURL: path)
            let rows = csv.rows
            print(rows)
            
            for row in rows {
                
                let money = Int(row["id"]!)!
                let name = row["value"]!
                
                let cook = Cookie(name: name, itemPrice: money)
                cookie.append(cook)
            }
        
        } catch let err as NSError {
            print(err.debugDescription)
        }
    }
//
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
//      Loads how many are gonna be displaced at a time (NOt show all of them) #USEFUL
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CookieCell", for: indexPath) as? CookieCell {


            
            
            
            
// THIS IS WHAT I NEED TO USE PER PIC/ITEM
//4
            let cook = cookie[indexPath.row]
//
            cell.configureCell(cook)
            
            return cell
        
        
        } else {
            
            return UICollectionViewCell()
        }
    
    }
//   select an object so it can do something
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        
        
    }
//  how many objects in collection view
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        
        return 14
    }
    
// reasearch this shit
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
        return CGSize(width: 156, height: 200)
    }

}


