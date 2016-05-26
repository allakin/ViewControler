//
//  Restaurant.swift
//  MyRestaurants
//
//  Created by Павел Анплеенко on 26/05/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import Foundation

class Restaurant{
  var name: String = ""
  var type: String = ""
  var image: String = ""
  var location: String = ""
  var isVisited: Bool = false
  
  init(name: String, type: String, location: String, image: String, isVisited: Bool) {
    self.name = name
    self.type = type
    self.image = image
    self.location = location
    self.isVisited = isVisited
  }
}