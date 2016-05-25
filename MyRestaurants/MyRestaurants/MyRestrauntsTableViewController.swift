//
//  MyRestrauntsTableViewController.swift
//  MyRestaurants
//
//  Created by Павел Анплеенко on 22/05/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import UIKit

class MyRestrauntsTableViewController: UITableViewController{
  
  // переменная с масивов в котором уже есть рестораны по умолчанию
  var restaurantNames = ["Ogonek Grill&Bar", "Елу", "Bonsai", "Дастархан", "Индокитай", "Х.О", "Балкан Гриль", "Respublica", "Speak Easy", "Moris Pub", "Вкусные истории", "Классик", "Love&Life", "Шок", "Бочка"]
  
  var restaurantImage = ["ogonek", "elu", "bonsai", "dastarhan", "indokitay", "x.o", "balkan", "respublika", "speakeasy", "morris", "istorii", "klassik", "love", "shok", "bochka"]
  
  var restaurantType = ["ресторан", "ресторан", "ресторан", "ресторан", "ресторан", "ресторан-клуб", "ресторан", "ресторан", "ресторанный комплекс", "ресторан", "ресторан", "ресторан", "ресторан", "ресторан", "ресторан", "ресторан"]
  
  var restaurantLocation = ["Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа"]
  
  var restaurantAlreadyVisited = [Bool](count: 15, repeatedValue: false)
  
  override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    //создаем алерт контроллер
    let actionMenu = UIAlertController(title: nil, message: "Что делаем?", preferredStyle: .ActionSheet)
    
    //создаем действия для контроллера
    let cancelAction = UIAlertAction(title: "Отмена", style: .Cancel, handler: nil)
    actionMenu.addAction(cancelAction)
    
    //действие "я тут был"
    let iHaveBeenThereAction = UIAlertAction(title: "Я тут был", style: .Default, handler: { (action: UIAlertAction) -> Void in
      
      let cell = tableView.cellForRowAtIndexPath(indexPath)
      cell?.accessoryType = .Checkmark
      self.restaurantAlreadyVisited[indexPath.row] = true
    })
    
    //действие "я тут не был"
    let iHaveNeverBeenThereAction = UIAlertAction(title: "Я тут не был", style: .Default, handler: { (action: UIAlertAction) -> Void in
      
      let cell = tableView.cellForRowAtIndexPath(indexPath)
      cell?.accessoryType = .None
      self.restaurantAlreadyVisited[indexPath.row] = false
    })
    
    //создаем ячейку и проверяем наличие .Checkmark и добавляем соответствующее действие
    let cell = tableView.cellForRowAtIndexPath(indexPath)
    
    if cell?.accessoryType == .Checkmark {
      actionMenu.addAction(iHaveNeverBeenThereAction)
    } else {
      actionMenu.addAction(iHaveBeenThereAction)
    }
    
    //обработчик звонка
    let callActionHandler = {(action: UIAlertAction!) -> Void in
      let warningMessage = UIAlertController(title: "Сервис не доступен", message: "В данный момент вызов не может быть выполнен", preferredStyle: .Alert)
      let okAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
      warningMessage.addAction(okAction)
      
      self.presentViewController(warningMessage, animated: true, completion: nil)
      
    }
    
    let callAction = UIAlertAction(title: "Зоним 1234567", style: .Default, handler: callActionHandler)
    actionMenu.addAction(callAction)
    
    
    //отображаем контроллер
    self.presentViewController(actionMenu, animated: true, completion: nil)
    
    tableView.deselectRowAtIndexPath(indexPath, animated: true)
    
  }
  
  // добавим действие для удаление ячейки
  override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
    
    //self.restaurantAlreadyVisited.removeAtIndex(indexPath.row)
    //self.restaurantNames.removeAtIndex(indexPath.row)
    //self.restaurantImage.removeAtIndex(indexPath.row)
    //self.restaurantType.removeAtIndex(indexPath.row)
    //self.restaurantLocation.removeAtIndex(indexPath.row)
    
    // удаление без анимации
    // self.tableView.reloadData()
    
    // удаление ячейки с анимацией fade
    //self.tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
  }
  
  // добавляем новый элемент в свайпе
  override func tableView(_: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]?  {
    
    let allShareAction = UITableViewRowAction(style: UITableViewRowActionStyle.Default, title: "Поделиться") { (UITableViewRowAction, indexPath: NSIndexPath!) -> Void in
      
      let allShareActionMenu = UIAlertController(title: nil, message: "Поделиться через", preferredStyle: .ActionSheet)
      
      // созданные кнопки
      let emailShareAction = UIAlertAction(title: "Email", style: .Default, handler: nil)
      let facebookShareAction = UIAlertAction(title: "Facebook", style: .Default, handler: nil)
      let vklShareAction = UIAlertAction(title: "Vkontakte", style: .Default, handler: nil)
      let cancellShareAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
      
      // добавляем кнопки
      allShareActionMenu.addAction(emailShareAction)
      allShareActionMenu.addAction(facebookShareAction)
      allShareActionMenu.addAction(vklShareAction)
      allShareActionMenu.addAction(cancellShareAction)
      
      // отображаем кнопки
      self.presentViewController(allShareActionMenu, animated: true, completion: nil)
    }
    
    // создаем кнопку delete
    let deleteAction = UITableViewRowAction(style: UITableViewRowActionStyle.Default, title: "Удалить") { (UITableViewRowAction, NSIndexPath) -> Void in

      self.restaurantAlreadyVisited.removeAtIndex(indexPath.row)
      self.restaurantNames.removeAtIndex(indexPath.row)
      self.restaurantImage.removeAtIndex(indexPath.row)
      self.restaurantType.removeAtIndex(indexPath.row)
      self.restaurantLocation.removeAtIndex(indexPath.row)
      
      self.tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
      
    }
    
    allShareAction.backgroundColor = UIColor(red: 184 / 255, green: 226 / 255, blue: 181 / 255, alpha: 1.0)
    
    // возвращаем массив [AnyObject]
    return [deleteAction, allShareAction]
    
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = false
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  // MARK: - Table view data source
  
  override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    // #warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1
  }
  
  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // #warning Incomplete method implementation.
    // Return the number of rows in the section.
    return restaurantNames.count
  }
  
  
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let cellIdentifier = "Cell"
    
    let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! MyRestarauntsTableViewCell
    
    // Configure the cell...
    
    cell.thumbnailImageView.image = UIImage(named: restaurantImage[indexPath.row])
    
    cell.nameLabel.text = restaurantNames[indexPath.row]
    cell.locationLabel.text = restaurantLocation[indexPath.row]
    cell.typeLabel.text = restaurantType[indexPath.row]
    
    cell.thumbnailImageView.layer.cornerRadius = cell.thumbnailImageView.frame.size.height / 2
    cell.thumbnailImageView.clipsToBounds = true
    
    
    // выражение если нету галочки то .Checkmark если есть то .None
    cell.accessoryType = restaurantAlreadyVisited[indexPath.row] ? .Checkmark : .None
    
    // красим галочку в красный
    cell.tintColor = UIColor.redColor()
    
    // cell.accessoryView = UIImageView(image: UIImage(named: "check-icon-green.png"))
    
    return cell
  }
  
  override func prefersStatusBarHidden() -> Bool {
    return true
  }
  
  /*
   // Override to support conditional editing of the table view.
   override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
   // Return NO if you do not want the specified item to be editable.
   return true
   }
   */
  
  /*
   // Override to support editing the table view.
   override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
   if editingStyle == .Delete {
   // Delete the row from the data source
   tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
   } else if editingStyle == .Insert {
   // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
   }
   }
   */
  
  /*
   // Override to support rearranging the table view.
   override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
   
   }
   */
  
  /*
   // Override to support conditional rearranging of the table view.
   override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
   // Return NO if you do not want the item to be re-orderable.
   return true
   }
   */
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
   // Get the new view controller using [segue destinationViewController].
   // Pass the selected object to the new view controller.
   }
   */
  
}
