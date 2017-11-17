//
//  Cookie.swift
//  VoLLLL
//
//  Created by Danilo Montalvo  on 9/29/17.
//  Copyright © 2017 Danilo Montalvo . All rights reserved.
//

import Foundation

class Cookie {
    
    fileprivate var _name: String!
    fileprivate var _itemPrice: Int!
    
    var name: String {
        return _name
    }
    
    var itemPrice: Int {
        
        return _itemPrice
    }
    
    init(name: String, itemPrice: Int) {
        
        self._name = name
        self._itemPrice = itemPrice
    }
}
