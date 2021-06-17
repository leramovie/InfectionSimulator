//
//  CustomLabel.swift
//  InfectionSimulator
//
//  Created by Valery Shel on 16.06.2021.
//

import UIKit

/// Кастомный lable для информационных заголовков
final class CustomTitleLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    func configure() {
        font = UIFont.title
        textColor = Styles.Colors.title
    }
}
