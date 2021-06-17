//
//  InfoViewController.swift
//  InfectionSimulator
//
//  Created by Valery Shel on 16.06.2021.
//

import UIKit

final class InfoViewController: UIViewController {
    
    // MARK: - UI Outlets
    
    @IBOutlet private var appInfoTextView: UITextView!
    
    // MARK: - ViewController life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - Private methods
    
    private func setupUI() {
        title = "info".localized()
        appInfoTextView.text = "appInfo".localized()
        appInfoTextView.font = UIFont.bodySmall
        appInfoTextView.textColor = Styles.Colors.headTitle
    }
}
