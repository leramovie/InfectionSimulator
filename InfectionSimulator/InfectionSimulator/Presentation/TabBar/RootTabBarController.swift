//
//  RootTabBarController.swift
//  InfectionSimulator
//
//  Created by Valery Shel on 16.06.2021.
//

import UIKit

final class RootTabBarController: UITabBarController {
    
    private func createGameBarItem() -> GameViewController {
        let item = GameViewController()
        let image = Styles.Images.play
        let tabBarItem = UITabBarItem(title: nil, image: image, tag: 0)
        item.tabBarItem = tabBarItem

        return item
    }
    
    private func createInfoBarItem() -> InfoViewController {
       
        let item = InfoViewController()
        let image = Styles.Images.info
        let tabBarItem = UITabBarItem(title: nil, image: image, tag: 0)
        item.tabBarItem = tabBarItem

        return item
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.unselectedItemTintColor = Styles.Colors.hints
        tabBar.barTintColor = .white

        viewControllers = [createGameBarItem(), createInfoBarItem()]
    }
}
