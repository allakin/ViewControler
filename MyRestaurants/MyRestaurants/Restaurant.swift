//
//  Restaurant.swift
//  MyRestaurants
//
//  Created by Павел Анплеенко on 26/05/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import Foundation
import CoreData

class Restaurant: NSManagedObject{
  @NSManaged var name: String!
  @NSManaged var type: String!
  @NSManaged var image: String!
  @NSManaged var location: String!
  @NSManaged var isVisited: NSNumber! 
//  
//  init(name: String, type: String, location: String, image: String, isVisited: Bool) {
//    self.name = name
//    self.type = type
//    self.image = image
//    self.location = location
//    self.isVisited = isVisited
//  }
}