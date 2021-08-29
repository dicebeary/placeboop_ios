//
//  AppDelegate.swift
//  Fortnightly
//
//  Created by Vajda Kristóf on 2021. 07. 16..
//

import UIKit
import Core
import Domain
import RxSwift
import Resolver

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let bag = DisposeBag()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//        window = UIWindow()
        
//        let navController = UINavigationController(rootViewController: ListViewController())
//        window?.rootViewController = navController
//        window?.makeKeyAndVisible()

        return true
    }

}
