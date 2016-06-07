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
  @IBOutlet var tableView: UITableView!
  // вернуться на предыдущий экран
  @IBAction func close(segue: UIStoryboardSegue) {
  }
  var restaurant: Restaurant!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
    
    // отображение картинок
    self.restaurantImageView.image = UIImage(data: restaurant.image)
    // задан тайтл для одного ресторана
    title = self.restaurant.name
    
     // высота ячейки вычесляется автоматически
//    self.tableView.estimatedRowHeight = 44
//    self.tableView.rowHeight = UITableViewAutomaticDimension
  }

  // запрещаяем движение навигационной панели на внутреннем ViewController
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    self.navigationController?.hidesBarsOnSwipe = false // не спрачится навигеншен бар
    self.navigationController?.setNavigationBarHidden(false, animated: true)
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
    case 2:
      cell.keyLebal.text = "Расположение"
      cell.valueLebal.text = restaurant.location
    case 3:
      cell.keyLebal.text = "Был там"
      cell.valueLebal.text = restaurant.isVisited.boolValue ? "Да" : "Нет"
    default:
      cell.keyLebal.text = ""
      cell.valueLebal.text = ""
    }
    return cell
  }
	
	// указание на 3 яйчейку в Details View Controller
	func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
		if indexPath.row == 2{
			// нужно осуществить переход на ShowTheMap
			self.performSegueWithIdentifier("ShowTheMap", sender: nil)
		}
		tableView.deselectRowAtIndexPath(indexPath, animated: true)
	}
	
	// передача адреса ресторана в  MapRestaurantLocationViewController
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		if segue.identifier == "ShowTheMap" {
			let destinationVC = segue.destinationViewController as! MapRestaurantLocationViewController
			destinationVC.restaurant = restaurant
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
