//
//  AppDelegate.swift
//  Sunny
//
//  Created by Radio Shaolin on 01.08.17.
//  Copyright © 2017 Radio Shaolin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Configure Window
        window?.tintColor = UIColor(red:0.99, green:0.47, blue:0.44, alpha:1.0)

        return true
    }

}
