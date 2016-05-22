//
//  ViewController.swift
//  simpleTableViewApp
//
//  Created by Павел Анплеенко on 22/05/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITabBarDelegate {
  
  // переменная с масивов в котором уже есть рестораны по умолчанию
  var restaurantNames = ["Ogonek", "Grill&Bar", "Елу", "Bonsai", "Дастархан", "Индокитай", "Х.О", "Балкан Гриль", "Respublica", "Speak Easy", "Moris Pub", "Вкусные истории", "Классик", "Love&Life", "Шок", "Бочка"]
  
  var restaurantImage = ["ogonek.jpg", "elu,jpg", "bonsai.jpg", "dastathan.jpg", "indokitay.jpg", "x.o.jpg", "balkan.jpg", "respublika.jpg", "speakesy.jpg", "morris.jpg", "istorii.jpg", "klassik.jpg", "love.jpg", "shok.jpg", "bochka.jpg"]
  
  // функция сколько рядом находится в одной секции
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return restaurantNames.count // вернет столько названий сколько элементов в массиве restaurantNames
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let cellIndentifier = "Cell" // дает индефикатор ячейки
    
    let cell = tableView.dequeueReusableCellWithIdentifier(cellIndentifier, forIndexPath: indexPath) as! UITableViewCell
    
    cell.textLabel?.text = restaurantNames[indexPath.row] // отображает название ресторанов из массива
    
    
    return cell
  } // выводится список Title
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

