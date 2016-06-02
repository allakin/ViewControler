//
//  MapRestaurantLocationViewController.swift
//  MyRestaurants
//
//  Created by Павел Анплеенко on 02/06/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import UIKit
import MapKit

class MapRestaurantLocationViewController: UIViewController {
	
	// обозначение карты
	@IBOutlet var mapView: MKMapView!
	var restaurant: Restaurant!

	override func viewDidLoad() {
					super.viewDidLoad()
		
		// создал экземпляр класса геокодер
		let geocoder = CLGeocoder()
		geocoder.geocodeAddressString(restaurant.location, completionHandler: {
			placemark, error in
			
			// проверка на наличие ошибки
			if error != nil{
				print(error)
				return
			}
		})
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
