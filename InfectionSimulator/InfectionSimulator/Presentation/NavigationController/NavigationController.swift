//
//  NavigationController.swift
//  InfectionSimulator
//
//  Created by Valery Shel on 16.06.2021.
//

import UIKit

/// Класс для настройки навигационной панели

final class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupAppearance()
    }

    private let titleTextAttributes: [NSAttributedString.Key: Any] = [
        .font: UIFont.bodySmall,
        .foregroundColor: UIColor.black
    ]

    func setupAppearance() {
        self.navigationItem.backButtonTitle = ""

        let appearance = UINavigationBarAppearance()
        appearance.titleTextAttributes = titleTextAttributes
        appearance.backgroundEffect = .none
        appearance.backgroundColor = .white
        appearance.shadowColor = Styles.Colors.buttonDefaultBackground

        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().tintColor = .orange

    }

}
