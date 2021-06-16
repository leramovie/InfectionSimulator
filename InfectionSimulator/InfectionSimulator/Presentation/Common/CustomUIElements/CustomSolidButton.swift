//
//  CustomSolidButton.swift
//  InfectionSimulator
//
//  Created by Valery Shel on 16.06.2021.
//

import UIKit

/// Кастомная кнопка моделирования
final class AccentSolidButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundColor = isEnabled ? Styles.Colors.accent : Styles.Colors.buttonDefaultBackground
        titleLabel?.textColor = isEnabled ? .white : Styles.Colors.title

    }

    func configure() {
        layer.cornerRadius = Constants.Buttons.buttonCornerRadius
        layer.cornerCurve = .continuous
        titleLabel?.font = UIFont.bodySmall
        isExclusiveTouch = true
    }
}
