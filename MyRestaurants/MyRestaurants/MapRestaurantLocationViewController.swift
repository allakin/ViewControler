//
//  MapRestaurantLocationViewController.swift
//  MyRestaurants
//
//  Created by Павел Анплеенко on 02/06/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import UIKit
import MapKit

class MapRestaurantLocationViewController: UIViewController, MKMapViewDelegate {
	
	// обозначение карты
	@IBOutlet var mapView: MKMapView!
	var restaurant: Restaurant!

	override func viewDidLoad() {
					super.viewDidLoad()
		
		//установил кто мне будет поставлять данные (Сам себе)
		mapView.delegate = self
		
		// создал экземпляр класса геокодер
		let geocoder = CLGeocoder()
		geocoder.geocodeAddressString(restaurant.location, completionHandler: {
			placemarks, error in
			
			// проверка на наличие ошибки
			if error != nil{
				print(error)
				return
			}
			
			// проверка массива placemarks
			if placemarks != nil && placemarks?.count > 0 {
				let placemark = placemarks![0] as! CLPlacemark
				
				// добавляем аннотации
				let annotation = MKPointAnnotation()
				annotation.title = self.restaurant.name
				annotation.subtitle = self.restaurant.type
				//аннотация должна быть прикрепленна в то место где распологается наш placemark
				annotation.coordinate = placemark.location!.coordinate
				
				self.mapView.showAnnotations([annotation], animated: true)
				//изначально все аннотации раскрыты
				self.mapView.selectAnnotation(annotation, animated: true)
			}
			
		})
	}

	override func didReceiveMemoryWarning() {
					super.didReceiveMemoryWarning()
					// Dispose of any resources that can be recreated.
	}
	
	func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
		// создаем аннотацию
		// индетификатор
		let identifier = "CurrentPin"
		
		if annotation.isKindOfClass(MKUserLocation){
			return nil
		}
		
		// ищем свободные аннотации
		var annotationView = mapView.dequeueReusableAnnotationViewWithIdentifier(identifier)
		
		// если аннотации нету то создаю ее
		if annotationView == nil {
			annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
			annotationView?.canShowCallout = true // отображаю аннотацию
		}
		
		// добавляем изображение к аннотации
		let leftSideAnnotationView = UIImageView(frame: CGRectMake(0, 0, 50, 50))
		leftSideAnnotationView.image = UIImage(named: restaurant.image)
		annotationView?.leftCalloutAccessoryView = leftSideAnnotationView
		
		return annotationView
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
