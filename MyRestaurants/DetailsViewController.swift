//
//  DetailsViewController.swift
//  MyRestaurants
//
//  Created by Павел Анплеенко on 25/05/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
  @IBOutlet var restaurantImageView: UIImageView!
  var restaurant: Restaurant!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
    
    // отображение картинок
    self.restaurantImageView.image = UIImage(named: restaurant.image)
  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  // Сколько всего ячеек
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 4
  }
  
  // Что получаем в каждой конкретной ячейке по адресу
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! DetailsTableViewCell
    
    // отображение информации в яцейках
//    if indexPath.row == 0 {
//      cell.keyLabel.text = "Название"
//      cell.valueLabel.text = restaurant.name
//    }
//    if indexPath.row == 1 {
//      cell.keyLabel = "Тип"
//    }
    switch indexPath.row {
    case 0:
      cell.keyLebal.text = "Название"
      cell.valueLebal.text = restaurant.name
    case 1:
      cell.keyLebal.text = "Тип"
      cell.valueLebal.text = restaurant.type
    case 3:
      cell.keyLebal.text = "Расположение"
      cell.valueLebal.text = restaurant.location
    case 4:
      cell.keyLebal.text = "Был там"
      cell.valueLebal.text = restaurant.isVisited ? "Да" : "Нет"
    default:
    case 1:
      cell.keyLebal.text = ""
      cell.valueLebal.text = ""
    }
  }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
