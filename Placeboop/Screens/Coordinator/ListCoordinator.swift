//
//  ListCoordinator.swift
//  Placeboop
//
//  Created by Vajda Kristóf on 2021. 08. 30..
//

import UIKit

final class ListCoordinator {
    private var tabBarController: UITabBarController
    
    init(tabBarController: UITabBarController) {
        self.tabBarController = tabBarController
    }
    
    func start() {
        let listScreen = ListViewController()

        listScreen.title = "First"
        tabBarController.viewControllers?[0] = listScreen
    }
}
