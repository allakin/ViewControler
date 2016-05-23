//
//  MyRestrauntsTableViewController.swift
//  MyRestaurants
//
//  Created by Павел Анплеенко on 22/05/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import UIKit

class MyRestrauntsTableViewController: UITableViewController, UITableViewDataSource, UITabBarDelegate{
  
  // переменная с масивов в котором уже есть рестораны по умолчанию
  var restaurantNames = ["Ogonek", "Grill&Bar", "Елу", "Bonsai", "Дастархан", "Индокитай", "Х.О", "Балкан Гриль", "Respublica", "Speak Easy", "Moris Pub", "Вкусные истории", "Классик", "Love&Life", "Шок", "Бочка"]
  
  var restaurantImage = ["ogonek.jpg", "ogonek.jpg", "elu.jpg", "bonsai.jpg", "dastarhan.jpg", "indokitay.jpg", "x.o.jpg", "balkan.jpg", "respublika.jpg", "speakeasy.jpg", "morris.jpg", "istorii.jpg", "klassik.jpg", "love.jpg", "shok.jpg", "bochka.jpg"]
  
  var restaurantType = ["ресторан", "ресторан", "ресторан", "ресторан", "ресторан", "ресторан-клуб", "ресторан", "ресторан", "ресторанный комплекс", "ресторан", "ресторан", "ресторан", "ресторан", "ресторан", "ресторан", "ресторан"]
  
  var restaurantLocation = ["Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа", "Уфа"]
  
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
    
    let cellIndetifier = "Cell"
    
      let cell = tableView.dequeueReusableCellWithIdentifier(cellIndetifier, forIndexPath: indexPath) as! MyRestarauntsTableViewCell
    
      cell.thumbnailImageView.image = UIImage(named: restaurantImage[indexPath.row])
      cell.locationLabel.text = restaurantLocation[indexPath.row]
      cell.typeLabel.text = restaurantType[indexPath.row]
      cell.nameLabel.text = restaurantNames[indexPath.row]
    
      // скругление углов
      cell.thumbnailImageView.layer.cornerRadius = cell.thumbnailImageView.frame.size.height / 2
      cell.thumbnailImageView.clipsToBounds = true
    
      return cell
  }
  
  override func prefersStatusBarHidden() -> Bool {
    return true
  }

  /*
  // Override to support conditional editing of the table view.
  override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
      // Return false if you do not want the specified item to be editable.
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
      // Return false if you do not want the item to be re-orderable.
      return true
  }
  */

  /*
  // MARK: - Navigation

  // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
      // Get the new view controller using segue.destinationViewController.
      // Pass the selected object to the new view controller.
  }
  */

}
