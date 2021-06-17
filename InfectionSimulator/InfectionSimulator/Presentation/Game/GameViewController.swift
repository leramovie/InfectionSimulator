//
//  GameViewController.swift
//  InfectionSimulator
//
//  Created by Valery Shel on 16.06.2021.
//

import UIKit

final class GameViewController: UIViewController {
    
    // MARK: - Collection view
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(
            top: Constants.Constraints.marginsInsets,
            left: Constants.Constraints.marginsInsets,
            bottom: Constants.Constraints.marginsInsets,
            right: Constants.Constraints.marginsInsets
        )

        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(
            GameUnitCollectionViewCell.self,
            forCellWithReuseIdentifier: GameUnitCollectionViewCell.reuseIdentifier)

        collectionView.toAutoLayout()
        collectionView.backgroundColor = Styles.Colors.screenBackground
        collectionView.dataSource = self
        collectionView.delegate = self

        return collectionView
    }()
    
    // MARK: - View Controller life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        
    }
    
    // MARK: - Private methods
    
    private func setupUI() {
        title = "game".localized()
        view.backgroundColor = .blue
    }
}

extension GameViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return UserDataService.groupSize
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: GameUnitCollectionViewCell.reuseIdentifier,
            for: indexPath)
        return cell
    }
}

extension GameViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath
    ) -> CGSize {
        let width = collectionView.bounds.width / 3.0 - 16
        let height = width

        return CGSize(width: width, height: height)
    }
}

private extension GameViewController {
    
    func setupLayout() {
        view.addSubviews(collectionView)
        
        let constraints = [
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
    }
}
