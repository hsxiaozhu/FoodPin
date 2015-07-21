//
//  Restaurant.swift
//  FoodPin
//
//  Created by 大可立青 on 15/4/15.
//  Copyright (c) 2015年 大可立青. All rights reserved.
//

import Foundation

class Restaurant {
    var name:String = ""
    var location:String = ""
    var type:String = ""
    var image:String = ""
    var isVisited:Bool = false
    
    init(name:String,type:String,location:String,image:String,isVisited:Bool){
        self.name = name
        self.location = location
        self.type = type
        self.image = image
        self.isVisited = isVisited
    }
}