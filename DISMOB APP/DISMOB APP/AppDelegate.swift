//
//  AppDelegate.swift
//  DISMOB APP[
//
//  Created by Isa Muhammad on 23/04/2019.
//  Copyright © 2019 Isa Muhammad. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        FirebaseApp.configure()
        
        setupApp()
        
        return true
    }
    
    func setupApp() {
        if Setting.didRegister {
            let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MyMainTab")
            window?.rootViewController = controller
        }
    }
}

