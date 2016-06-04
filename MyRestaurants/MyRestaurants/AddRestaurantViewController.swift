//
//  AddRestaurantViewController.swift
//  MyRestaurants
//
//  Created by Павел Анплеенко on 04/06/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import UIKit

class AddRestaurantViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

	override func viewDidLoad() {
					super.viewDidLoad()

					// Do any additional setup after loading the view.
	}

	override func didReceiveMemoryWarning() {
					super.didReceiveMemoryWarning()
					// Dispose of any resources that can be recreated.
	}
	
	// MARK: - Navigation

	func tableView(table: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
		if indexPath.row == 0 {
			if UIImagePickerController.isSourceTypeAvailable(.PhotoLibrary) {
				let imagePicker = UIImagePickerController()
				// недоступно режим редактирование изображений
				imagePicker.allowsEditing = false
				// откуда брать материалы
				imagePicker.sourceType = .PhotoLibrary
				// отобразить
				self.presentViewController(imagePicker, animated: true, completion: nil)
			}
		}
	}
	
	
	/*
	// In a storyboard-based application, you will often want to do a little preparation before navigation
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
					// Get the new view controller using segue.destinationViewController.
					// Pass the selected object to the new view controller.
	}
	*/

}
