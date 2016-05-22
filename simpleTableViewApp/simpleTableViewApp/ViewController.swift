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
  
  // функция сколько рядом находится в одной секции
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    returt 1
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let cellIndentifier = "Cell"
    
    let cell = tableView.dequeueReusableCellWithIdentifier(cellIndentifier, forIndexPath: indexPath) as! UITableViewCell
    
    return cell
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

