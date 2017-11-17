//
//  CookieCell.swift
//  VoLLLL
//
//  Created by Danilo Montalvo  on 9/29/17.
//  Copyright © 2017 Danilo Montalvo . All rights reserved.
//

import UIKit

class CookieCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    
//      similar to the class in (Model->Cookie)
    var cookie: Cookie!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
        
   }

    // repear step as above
    func configureCell(_ cookie: Cookie) {
        
//declare lower case class by itself
        self.cookie = cookie
        
//      use name (Model->Cookie)
        nameLbl.text = self.cookie.name.capitalized
        thumbImg.image = UIImage(named: "\(self.cookie.itemPrice)")
        
        
    }
    
}
