//
//  DetailsViewController.swift
//  MyRestaurants
//
//  Created by Павел Анплеенко on 25/05/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
  
  @IBOutlet var restaurantImageView: UIImageView!
  var restaurantImages: String!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
    
    // отображение картинок
    self.restaurantImageView.image = UIImage(named: restaurantImages)
  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
