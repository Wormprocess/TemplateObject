//
//  AppDelegate.swift
//  TemplateSwift
//
//  Created by Worm on 2020/5/15.
//  Copyright © 2020 Worm. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow.init(frame: UIScreen.main.bounds);
        window?.backgroundColor = UIColor.white
        
        let vc = ViewController.init()
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        return true
    }
}

