//
//  ViewController.swift
//  simpleTableViewApp
//
//  Created by Павел Анплеенко on 22/05/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import UIKit

// Этапы действия
// 1. Определить фон, определить секции
// 2. Создать и добавить массив из названия ресторанов
// 3. Отобразить название ресторанов из списока
// 4. Добравить картинки ресторанов и создать массив из название и расширений файлов
// 5. Отобразить картинку под своим названием
// 6. Создать функцию которая убирает status bar на это странице

class ViewController: UIViewController, UITableViewDataSource, UITabBarDelegate {
  
  // переменная с масивов в котором уже есть рестораны по умолчанию
  var restaurantNames = ["Ogonek", "Grill&Bar", "Елу", "Bonsai", "Дастархан", "Индокитай", "Х.О", "Балкан Гриль", "Respublica", "Speak Easy", "Moris Pub", "Вкусные истории", "Классик", "Love&Life", "Шок", "Бочка"]
  
  var restaurantImage = ["ogonek.jpg", "ogonek.jpg", "elu.jpg", "bonsai.jpg", "dastarhan.jpg", "indokitay.jpg", "x.o.jpg", "balkan.jpg", "respublika.jpg", "speakeasy.jpg", "morris.jpg", "istorii.jpg", "klassik.jpg", "love.jpg", "shok.jpg", "bochka.jpg"]
  
  // функция убирает старут бар
  override func prefersStatusBarHidden() -> Bool {
    return true
  }
  
  // функция сколько рядом находится в одной секции
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return restaurantNames.count // вернет столько названий сколько элементов в массиве restaurantNames
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let cellIndentifier = "Cell" // дает индефикатор ячейки
    
    let cell = tableView.dequeueReusableCellWithIdentifier(cellIndentifier, forIndexPath: indexPath) as! UITableViewCell
    
    cell.textLabel?.text = restaurantNames[indexPath.row] // отображает название ресторанов из массива restaurantNames
    cell.imageView?.image =  UIImage(named: restaurantImage[indexPath.row]) // отображает картинки из массива restaurantImage
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

