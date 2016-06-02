//
//  ShareViewController.swift
//  MyRestaurants
//
//  Created by Павел Анплеенко on 02/06/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import UIKit

class ShareViewController: UIViewController {
	
	@IBOutlet weak var backgraundImageView: UIImageView!
	@IBOutlet weak var topLeft: UIView!
	@IBOutlet weak var topRight: UIView!
	@IBOutlet weak var bottomRight: UIView!
	@IBOutlet weak var bottomLeft: UIView!

	override func viewDidLoad() {
					super.viewDidLoad()
		//изображение за пределами экрана
		topLeft.transform = CGAffineTransformMakeTranslation(0, -500)
		topRight.transform = CGAffineTransformMakeTranslation(0, -500)
		bottomRight.transform = CGAffineTransformMakeTranslation(0, 500)
		bottomLeft.transform = CGAffineTransformMakeTranslation(0, 500)
	}
	
	override func viewDidAppear(animated: Bool) {
		// анимация время 0.7 секунд, задержика 0
		// чтобы анимация применилась ко всем 4 иконкам ее надо animateWithDuration надо вставить для каждой иконки
		UIView.animateWithDuration(0.7, delay: 0.3, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: {
			self.topLeft.transform = CGAffineTransformMakeTranslation(0, 0)
			}, completion: nil)
		
		UIView.animateWithDuration(0.7, delay: 0.2, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: {
			self.topRight.transform = CGAffineTransformMakeTranslation(0, 0)
			}, completion: nil)
		
		UIView.animateWithDuration(0.7, delay: 0.5, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: {
			self.bottomRight.transform = CGAffineTransformMakeTranslation(0, 0)
			}, completion: nil)
		
		UIView.animateWithDuration(0.7, delay: 0.7, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: {
			self.bottomLeft.transform = CGAffineTransformMakeTranslation(0, 0)
			}, completion: nil)
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
