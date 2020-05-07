//
//  AppDelegate.swift
//  Class-in-depth-Swift
//
//  Created by Cong Le on 5/5/20.
//  Copyright © 2020 CongLeSolutionX. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let homeViewController = HomeViewController()
        window?.rootViewController = homeViewController
        window?.makeKeyAndVisible()
        window?.backgroundColor = .green
        return true
    }

}

