//
//  GameUnitCollectionViewCell.swift
//  InfectionSimulator
//
//  Created by Valery Shel on 17.06.2021.
//

import UIKit

class GameUnitCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Static
    
    static let reuseIdentifier = "GameUnitCollectionViewCell"
    
    // MARK: - UI elements
    
    private let imageView: UIImageView = {
        let image = UIImageView()
        image.image = Styles.Images.person
        image.contentMode = .scaleAspectFill

        return image
    }()
    
    // MARK: - Initializer

    override init(frame: CGRect) {
        super.init(frame: frame)

        contentView.backgroundColor = Styles.Colors.buttonDefaultBackground
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupLayout() {
        contentView.addSubviews(imageView)

        let constraints = [
            imageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 50),
            imageView.widthAnchor.constraint(equalToConstant: 30)
        ]
        NSLayoutConstraint.activate(constraints)

    }
}
