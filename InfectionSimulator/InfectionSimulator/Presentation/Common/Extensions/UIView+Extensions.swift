//
//  UIView+Extensions.swift
//  InfectionSimulator
//
//  Created by Valery Shel on 17.06.2021.
//

import UIKit

extension UIView {

    func addSubviews(_ views: UIView...) {
        views.forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            self.addSubview($0)
        }
    }

    func toAutoLayout() {
        self.translatesAutoresizingMaskIntoConstraints = false
    }

    // MARK: - Animation

    /// Simply zooming in of a view: set view scale to 0 and zoom to Identity on 'duration' time interval.
    /// - parameter duration: animation duration
    func zoomIn(duration: TimeInterval = 0.2) {
        transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
        UIView.animate(
            withDuration: duration,
            delay: 0.0,
            options: [.curveLinear],
            animations: {
                self.transform = .identity
            })
    }
}
