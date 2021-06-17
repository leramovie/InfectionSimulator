//
//  AppDelegate.swift
//  InfectionSimulator
//
//  Created by Valery Shel on 16.06.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        
        let navController = NavigationController(rootViewController: UserFormViewController(nibName: nil, bundle: nil))
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = navController
        window.makeKeyAndVisible()
        self.window = window
        
        return true
    }
}
