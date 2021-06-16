//
//  UIFont.swift
//  Workplaces
//
//  Created by Valery Shel on 19.05.2021.
//

import UIKit.UIFont

extension UIFont {

    static var title: UIFont {
        customFont(name: "IBMPlexSans", size: 36)
    }

    static var subTitle: UIFont {
        customFont(name: "IBMPlexSans-Medium", size: 28)
    }

    static var bodyLarge: UIFont {
        customFont(name: "IBMPlexSans", size: 14)
    }

    static var bodySmall: UIFont {
        customFont(name: "IBMPlexSans", size: 16)
    }

    private static func customFont(name: String, size: CGFloat) -> UIFont {
            let font = UIFont(name: name, size: size)
            assert(font != nil, "Can't load font: \(name)")
            return font ?? UIFont.systemFont(ofSize: size)
        }
  
}
