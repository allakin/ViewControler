//
//  ViewController.swift
//  Hello-World
//
//  Created by Павел Анплеенко on 22/05/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBAction func showAllertMessege() {
    
    // вызов алерта с текстом
    let alertControler = UIAlertController(title: "Hello world Detected", message: "This is my fist app", preferredStyle: UIAlertControllerStyle.Alert)
    
    // действие добавляет кнопку
    alertControler.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
    alertControler.addAction(UIAlertAction(title: "Cansel", style: UIAlertActionStyle.Default, handler: nil))
    alertControler.addAction(UIAlertAction(title: "sdfsdf", style: UIAlertActionStyle.Destructive, handler: nil))
    
    // настройки анимации true - плавная, false - резкая
    self.presentViewController(alertControler, animated: true, completion: nil)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

