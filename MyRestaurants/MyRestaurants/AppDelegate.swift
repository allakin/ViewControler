//
//  AppDelegate.swift
//  MyRestraunts
//
//  Created by p1us on 05.06.15.
//  Copyright (c) 2015 Ivan Akulov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
  
  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    
    // добавление фона цвета к наигатор бару
    UINavigationBar.appearance().barTintColor = UIColor(red: 201 / 255, green: 81 / 255, blue: 0.0, alpha: 1.0)
    
    //изменение цвета шрифта на навигашон бар
    UINavigationBar.appearance().tintColor = UIColor.whiteColor()
    
    // поменять шрифт и цвет в навигашион бар
    if let font = UIFont(name: "AppleSDGothicNeo-SemiBold", size: 22.0){
    UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor(), NSFontAttributeName: font]
    }
    
    //изменения заряда и времени на белый
    UIApplication.sharedApplication().statusBarStyle = .LightContent
    
    // цвет барбаттон(внизу 2 кнопку) tintColor цвет самих кнопок
//    UIBarButtonItem.appearance().tintColor = UIColor(red: 201 / 255, green: 81 / 255, blue: 0.0, alpha: 1.0)
    //сама эта панель
    UIToolbar.appearance().barTintColor = UIColor(red: 235 / 255, green: 240 / 255, blue: 240 / 255, alpha: 1.0)
    return true
  }
  
  func applicationWillResignActive(application: UIApplication) {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
  }
  
  func applicationDidEnterBackground(application: UIApplication) {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
  }
  
  func applicationWillEnterForeground(application: UIApplication) {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
  }
  
  func applicationDidBecomeActive(application: UIApplication) {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
  }
  
  func applicationWillTerminate(application: UIApplication) {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
  }
  
  
}

