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
  @IBOutlet weak var windowView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
      
      // размытие фона картинки
      var darkBlurEffect = UIBlurEffect(style: UIBlurEffectStyle.Dark)
      var darkBlurEffectView = UIVisualEffectView(effect: darkBlurEffect)
      //ограничение границы нашего view
      darkBlurEffectView.frame = view.bounds
      backgraundImageView.didAddSubview(darkBlurEffectView)
      
      // анимация сначала меняется маштаб
      //windowView.transform = CGAffineTransformMakeScale(0.0, 0.0)
      let scaleAnimation = CGAffineTransformMakeScale(0.0, 0.0)
      //изображение за пределами экрана
      let translationAnimation = CGAffineTransformMakeTranslation(0, 600)
      //объединение 2-я анимаций
      windowView.transform = CGAffineTransformConcat(scaleAnimation, translationAnimation)

      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  override func viewDidAppear(animated: Bool) {
    // анимация время 0.7 секунд, задержика 0
    UIView.animateWithDuration(0.7, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: {
      
      let scaleAnimation = CGAffineTransformMakeScale(1.0, 1.0)
      //изображение на том месте на котором мы его установили
      let translationAnimation = CGAffineTransformMakeTranslation(0, 0)
      //объединение 2-я анимаций
      self.windowView.transform = CGAffineTransformConcat(scaleAnimation, translationAnimation)
      
      }, completion: nil)
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