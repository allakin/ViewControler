//
//  QuickReviewViewController.swift
//  MyRestaurants
//
//  Created by Павел Анплеенко on 30/05/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import UIKit

class QuickReviewViewController: UIViewController {
  
  @IBOutlet weak var backgraundImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
      
      // размытие фона картинки
      var darkBlurEffect = UIBlurEffect(style: UIBlurEffectStyle.Dark)
      var darkBlurEffectView = UIVisualEffectView(effect: darkBlurEffect)
      //ограничение границы нашего view
      darkBlurEffectView.frame = view.bounds
      backgraundImageView.didAddSubview(darkBlurEffectView)
      
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
