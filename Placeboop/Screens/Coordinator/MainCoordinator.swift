//
//  MainCoordinator.swift
//  Placeboop
//
//  Created by Vajda Kristóf on 2021. 08. 29..
//

import UIKit

final class MainCoordinator {
    private var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let tabBarController = UITabBarController()
        let dummyVC = UIViewController()
        tabBarController.viewControllers = [dummyVC, dummyVC, dummyVC, dummyVC]
        navigationController.setViewControllers([tabBarController], animated: true)
        
        let listCoordinator = ListCoordinator(tabBarController: tabBarController)
        listCoordinator.start()
    }
}
