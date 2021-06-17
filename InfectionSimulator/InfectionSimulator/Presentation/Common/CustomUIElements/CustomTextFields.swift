//
//  CustomTextFields.swift
//  InfectionSimulator
//
//  Created by Valery Shel on 16.06.2021.
//

import UIKit

/// Кастомное основное поле text field для форм авторизаций
final class CustomTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }

    func configure() {
        background = Styles.Images.inputLine
        clearButtonMode = .whileEditing
        font = UIFont.bodyLarge
        keyboardType = .numberPad

    }

}
