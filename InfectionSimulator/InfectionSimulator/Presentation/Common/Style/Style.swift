//
//  Style.swift
//  InfectionSimulator
//
//  Created by Valery Shel on 16.06.2021.
//

import UIKit

enum Styles {
    enum Images {}
    enum Colors {}
}

extension Styles.Images {
    static let play: UIImage = UIImage(systemName: "play.fill")!
    static let info: UIImage = UIImage(systemName: "info")!

}

extension Styles.Colors {

    static let accent: UIColor = UIColor(named: "Orange") ?? #colorLiteral(red: 0.9949944615, green: 0.2682545781, blue: 0.02411911264, alpha: 1)
    static let headTitle: UIColor = UIColor(named: "DarkGrey") ?? #colorLiteral(red: 0.4529128075, green: 0.5035839677, blue: 0.6281320453, alpha: 1)
    static let hints: UIColor = UIColor(named: "Grey") ?? #colorLiteral(red: 0.6338535547, green: 0.6731334329, blue: 0.7562387586, alpha: 1)
    static let title: UIColor = UIColor(named: "MiddleGrey") ?? #colorLiteral(red: 0.8576466441, green: 0.8890730143, blue: 0.9596906304, alpha: 1)
    static let buttonDefaultBackground: UIColor = UIColor(named: "LightGreyBlue") ?? #colorLiteral(red: 0.9606800675, green: 0.9608443379, blue: 0.9606696963, alpha: 1)
    static let screenBackground: UIColor = UIColor(named: "LightGrey") ?? #colorLiteral(red: 0.9683808684, green: 0.9724050164, blue: 0.9847221971, alpha: 1)
}
