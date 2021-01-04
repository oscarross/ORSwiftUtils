//
//  AppDelegate.swift
//  ORSwiftUtils
//
//  Created by Oskar Rosołowski on 01/04/2021.
//  Copyright (c) 2021 Oskar Rosołowski. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let bounds = UIScreen.main.bounds
        self.window = UIWindow(frame: bounds)
        self.window?.rootViewController = ExampleViewController()
        self.window?.makeKeyAndVisible()
        
        return true
    }
}
