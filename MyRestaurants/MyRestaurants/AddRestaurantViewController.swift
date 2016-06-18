//
//  AddRestaurantViewController.swift
//  MyRestaurants
//
//  Created by Павел Анплеенко on 04/06/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import UIKit
import CoreData

class AddRestaurantViewController: UITableViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

	@IBOutlet weak var imageView: UIImageView!
	@IBOutlet weak var nameTextField: UITextField!
	@IBOutlet weak var typeTextField: UITextField!
	@IBOutlet weak var locationField: UITextField!
	@IBOutlet weak var yesButton: UIButton!
	@IBOutlet weak var noButton: UIButton!
	
	var restaurant: Restaurant!
	var isVisited = false
	
	override func viewDidLoad() {
					super.viewDidLoad()

					// Do any additional setup after loading the view.
	}

	override func didReceiveMemoryWarning() {
					super.didReceiveMemoryWarning()
					// Dispose of any resources that can be recreated.
	}
	
	// MARK: - Navigation

	override func tableView(table: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
		if indexPath.row == 0 {
			if UIImagePickerController.isSourceTypeAvailable(.PhotoLibrary) {
				let imagePicker = UIImagePickerController()
				//добавляю картинки я сам
				imagePicker.delegate = self
				// недоступно режим редактирование изображений
				imagePicker.allowsEditing = false
				// откуда брать материалы
				imagePicker.sourceType = .PhotoLibrary
				// отобразить
				self.presentViewController(imagePicker, animated: true, completion: nil)
			}
		}
		
		tableView.deselectRowAtIndexPath(indexPath, animated: true)
		
	}
	
	func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
		
		imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
		imageView.contentMode = .ScaleAspectFill
		imageView.clipsToBounds = true
		
		dismissViewControllerAnimated(true, completion: nil)
		
	}
	
	func navigationController(navigationController: UINavigationController, willShowViewController viewController: UIViewController, animated: Bool) {
		
		UIApplication.sharedApplication().setStatusBarStyle(.LightContent, animated: false)
		
	}
	
	@IBAction func saveRestaurant() {
		
		// проверка на заполненность всех полей
		var error = ""
		
		if nameTextField.text!.isEmpty {
			error = "Название"
		} else if typeTextField.text!.isEmpty {
			error = "Тип"
		} else if locationField.text!.isEmpty {
			error = "Расположение"
		}

		if error != "" {
				let alertController = UIAlertController(title: "Упс", message: "Вы не заполнили поле \(error), пожалуйсто заполноте его!", preferredStyle: .Alert)
				let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil)
			
				alertController.addAction(okAction)
			
				self.presentViewController(alertController, animated: true, completion: nil)
			
				return
		}
		
		print("Значение поля nameTextFiled: " + nameTextField.text!)
		print("Значение поля nameTextFiled: " + typeTextField.text!)
		print("Значение поля nameTextFiled: " + locationField.text!)
		print("Посетили ли вы ресторан: " + (self.isVisited ? "Да" : "Нет"))
		
		performSegueWithIdentifier("unwindBackToHomeScreen", sender: self)
	}
	
	/*
	// In a storyboard-based application, you will often want to do a little preparation before navigation
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
					// Get the new view controller using segue.destinationViewController.
					// Pass the selected object to the new view controller.
	}
	*/

}
