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
		topRight.transform = CGAffineTransformMakeTranslation(0, 500)
		bottomLeft.transform = CGAffineTransformMakeTranslation(0, 500)
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
