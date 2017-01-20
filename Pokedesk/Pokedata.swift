//
//  Pokedata.swift
//  Pokedesk
//
//  Created by IOS DEVELOPER on 1/20/17.
//  Copyright © 2017 New IT Venture. All rights reserved.
//

import Foundation

class Pokedata {
    
    private var _name: String?
    private var _count : String?
    
    
    var name : String{
        
        return _name!
    }
    
    
    var count : String{
        
        return _count!
    }
    
    init(name : String, count : String) {
        
        self._name = name
        self._count = count
        
    }
    
    
    
    
    
    
}
