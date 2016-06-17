//
//  MyRestrauntsTableViewController.swift
//  MyRestaurants
//
//  Created by Павел Анплеенко on 22/05/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import UIKit

class MyRestrauntsTableViewController: UITableViewController{
  
//  // переменная с масивов в котором уже есть рестораны по умолчанию
//  var restaurantNames = ["Ogonek Grill&Bar", "Елу", "Bonsai", "Дастархан", "Индокитай", "Х.О", "Балкан Гриль", "Respublica", "Speak Easy", "Moris Pub", "Вкусные истории", "Классик", "Love&Life", "Шок", "Бочка"]
//  
//  var restaurantImage = ["ogonek", "elu", "bonsai", "dastarhan", "indokitay", "x.o", "balkan", "respublika", "speakeasy", "morris", "istorii", "klassik", "love", "shok", "bochka"]
//  
//  var restaurantType = ["ресторан", "ресторан", "ресторан", "ресторан", "ресторан", "ресторан-клуб", "ресторан", "ресторан", "ресторанный комплекс", "ресторан", "ресторан", "ресторан", "ресторан", "ресторан", "ресторан", "ресторан"]
//  
//  var restaurantLocation = ["Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа"]
  
  // заменили верхние массивы на новый
	var myRestaurants: [Restaurant] = []
	// переменная поиска
	var searchContller: UISearchController!
//	var myRestaurants: [Restaurant] = [
//    Restaurant(name: "Ogonёk Grill&Bar", type: "ресторан", location: "г. Уфа, ул. Ставропольская 23, офис 23/2", image: "ogonek.jpg", isVisited: true),
//    Restaurant(name: "Елу", type: "ресторан", location: "Уфа", image: "elu.jpg", isVisited: false),
//    Restaurant(name: "Bonsai", type: "ресторан", location: "Уфа", image: "bonsai.jpg", isVisited: false),
//    Restaurant(name: "Дастархан", type: "ресторан", location: "Уфа", image: "dastarhan.jpg", isVisited: false),
//    Restaurant(name: "Индокитай", type: "ресторан", location: "Уфа", image: "indokitay.jpg", isVisited: false),
//    Restaurant(name: "X.O", type: "ресторан-клуб", location: "Уфа", image: "x.o.jpg", isVisited: false),
//    Restaurant(name: "Балкан Гриль", type: "ресторан", location: "Уфа", image: "balkan.jpg", isVisited: true ),
//    Restaurant(name: "Respublica", type: "ресторан", location: "Уфа", image: "respublika.jpg", isVisited: false),
//    Restaurant(name: "Speak Easy", type: "ресторанный комплекс", location: "Уфа", image: "speakeasy.jpg", isVisited: false),
//    Restaurant(name: "Morris Pub", type: "ресторан", location: "Уфа", image: "morris.jpg", isVisited: false),
//    Restaurant(name: "Вкусные истории", type: "ресторан", location: "Уфа", image: "istorii.jpg", isVisited: false),
//    Restaurant(name: "Классик", type: "ресторан", location: "Уфа", image: "klassik.jpg", isVisited: false),
//    Restaurant(name: "Love&Life", type: "ресторан", location: "Уфа", image: "love.jpg", isVisited: false),
//    Restaurant(name: "Шок", type: "ресторан", location: "Уфа", image: "shok.jpg", isVisited: false),
//    Restaurant(name: "Бочка", type: "ресторан", location:  "Уфа", image: "bochka.jpg", isVisited: false)]
//  
	
	@IBAction func inwindBackToHomeScreen(segue:UIStoryboardSegue) {
		
	}
	
  //var restaurantAlreadyVisited = [Bool](count: 15, repeatedValue: false)
  
  override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    //создаем алерт контроллер
    let actionMenu = UIAlertController(title: nil, message: "Что делаем?", preferredStyle: .ActionSheet)
    
    //создаем действия для контроллера
    let cancelAction = UIAlertAction(title: "Отмена", style: .Cancel, handler: nil)
    actionMenu.addAction(cancelAction)
    
//    //действие "я тут был"
//    let iHaveBeenThereAction = UIAlertAction(title: "Я тут был", style: .Default, handler: { (action: UIAlertAction) -> Void in
//      
//      let cell = tableView.cellForRowAtIndexPath(indexPath)
//      cell?.accessoryType = .Checkmark
//      self.restaurantAlreadyVisited[indexPath.row] = true
//    })
//    
//    //действие "я тут не был"
//    let iHaveNeverBeenThereAction = UIAlertAction(title: "Я тут не был", style: .Default, handler: { (action: UIAlertAction) -> Void in
//      
//      let cell = tableView.cellForRowAtIndexPath(indexPath)
//      cell?.accessoryType = .None
//      self.restaurantAlreadyVisited[indexPath.row] = false
//    })
//    
//    //создаем ячейку и проверяем наличие .Checkmark и добавляем соответствующее действие
//    let cell = tableView.cellForRowAtIndexPath(indexPath)
//    
//    if cell?.accessoryType == .Checkmark {
//      actionMenu.addAction(iHaveNeverBeenThereAction)
//    } else {
//      actionMenu.addAction(iHaveBeenThereAction)
//    }
//    
//    //обработчик звонка
//    let callActionHandler = {(action: UIAlertAction!) -> Void in
//      let warningMessage = UIAlertController(title: "Сервис не доступен", message: "В данный момент вызов не может быть выполнен", preferredStyle: .Alert)
//      let okAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
//      warningMessage.addAction(okAction)
//      
//      self.presentViewController(warningMessage, animated: true, completion: nil)
//      
//    }
//    
//    let callAction = UIAlertAction(title: "Зоним 1234567", style: .Default, handler: callActionHandler)
//    actionMenu.addAction(callAction)
//    
//    
//    //отображаем контроллер
//    self.presentViewController(actionMenu, animated: true, completion: nil)
//    
//    tableView.deselectRowAtIndexPath(indexPath, animated: true)
    
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
      
      // новый способ отображения информации
      self.myRestaurants.removeAtIndex(indexPath.row)
//      self.restaurantAlreadyVisited.removeAtIndex(indexPath.row)
//      self.restaurantNames.removeAtIndex(indexPath.row)
//      self.restaurantImage.removeAtIndex(indexPath.row)
//      self.restaurantType.removeAtIndex(indexPath.row)
//      self.restaurantLocation.removeAtIndex(indexPath.row)
      
      self.tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
      
    }
    
    allShareAction.backgroundColor = UIColor(red: 184 / 255, green: 226 / 255, blue: 181 / 255, alpha: 1.0)
    
    // возвращаем массив [AnyObject]
    return [deleteAction, allShareAction]
    
  }
  
  // запрещаяем движение навигационной панели на внутреннем ViewController
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    self.navigationController?.hidesBarsOnSwipe = true // спрячится навигенен бар
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // убирает title на внутреннем ViewController
    self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
    
    //    ыудаюефидуМшуцюкщцРушпре = 85
    //    ыудаюефидуМшуцюкщцРушпре = ГШЕфидуМшуцФгещьфешсВшьутышщт
			
			//экземпляр где там поиск будет в этом контролере
			searchContller = UISearchController(searchResultsController: nil)
			//отображает поика на навигешен контролер
			searchContller.searchBar.sizeToFit()
			// место для отображение поиска
			tableView.tableHeaderView = searchContller.searchBar
			
			//определить контекст в котором будет производиться поиск
			definesPresentationContext = true
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
    return myRestaurants.count
    //return restaurantNames.count
  }
  
  
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let cellIdentifier = "Cell"
    
    let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! MyRestarauntsTableViewCell
    
    // Configure the cell...
    
    cell.thumbnailImageView.image = UIImage(data: myRestaurants[indexPath.row].image)
    
    cell.nameLabel.text = myRestaurants[indexPath.row].name
    cell.locationLabel.text = myRestaurants[indexPath.row].location
    cell.typeLabel.text = myRestaurants[indexPath.row].type
				cell.cheakImageView.hidden = !myRestaurants[indexPath.row].isVisited.boolValue
    
//    cell.thumbnailImageView.image = UIImage(named: restaurantImage[indexPath.row])
//    cell.nameLabel.text = restaurantNames[indexPath.row]
//    cell.locationLabel.text = restaurantLocation[indexPath.row]
//    cell.typeLabel.text = restaurantType[indexPath.row]
    
    cell.thumbnailImageView.layer.cornerRadius = cell.thumbnailImageView.frame.size.height / 2
    cell.thumbnailImageView.clipsToBounds = true
    
    
    // выражение если нету галочки то .Checkmark если есть то .None
    //cell.accessoryType = myRestaurants[indexPath.row].isVisited ? .Checkmark : .None
//    cell.accessoryType = restaurantAlreadyVisited[indexPath.row] ? .Checkmark : .None
    
    // красим галочку в красный
    //cell.tintColor = UIColor.redColor()
    
    // cell.accessoryView = UIImageView(image: UIImage(named: "check-icon-green.png"))
    
    return cell
  }
 
  // отображение уровня заряда
//  override func prefersStatusBarHidden() -> Bool {
//    return true
//  }
//  
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
  
  
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
  
   // переход на новый контролер DetailsViewController
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "showDetailsSegue" {
      if let indexPath = self.tableView.indexPathForSelectedRow{
        let destinationVC = segue.destinationViewController as! DetailsViewController
        destinationVC.restaurant = self.myRestaurants[indexPath.row]
      }
    }
  }
  
}
