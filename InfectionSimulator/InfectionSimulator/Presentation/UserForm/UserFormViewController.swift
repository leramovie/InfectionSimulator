//
//  UserFormViewController.swift
//  InfectionSimulator
//
//  Created by Valery Shel on 16.06.2021.
//

import UIKit

final class UserFormViewController: KeyboardViewController {

    // MARK: - UI outlets
    
    @IBOutlet private var userFormStackView: UIStackView!
    @IBOutlet private var groupSizeTextField: UITextField!
    @IBOutlet private var infectionFactorTextField: UITextField!
    @IBOutlet private var periodTextField: UITextField!
    @IBOutlet private var simulateButton: UIButton!
    
    // MARK: - UI constraints
    
    @IBOutlet private var simulateBottomConstraint: NSLayoutConstraint!

    // MARK: - View Controller life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    // MARK: - Keyboard override

    override func keyboardWillShow(notification: NSNotification) {
        animateWithKeyboard(notification: notification) { keyboardFrame in
            let constant = 20 + keyboardFrame.height
            self.simulateBottomConstraint?.constant = constant
        }
    }

    override func keyboardWillHide(_ notification: NSNotification) {
        animateWithKeyboard(notification: notification) { _ in
            self.simulateBottomConstraint?.constant = Constants.Constraints.defaultConstraint
        }
    }
    
    // MARK: - Private methods
    
    private func setupUI() {
        title = "userFormNavTitle".localized()
        simulateButton.isEnabled = false
        groupSizeTextField.placeholder = "groupSizePlaceholder".localized()
        infectionFactorTextField.placeholder = "infectionFactorPlaceholder".localized()
        periodTextField.placeholder = "periodPlaceholder".localized()
        simulateButton.setTitle("simulate".localized(), for: .normal)
        groupSizeTextField.setLeftPaddingPoints(Constants.TextFields.textFiedlLeftPadding)
        infectionFactorTextField.setLeftPaddingPoints(Constants.TextFields.textFiedlLeftPadding)
        periodTextField.setLeftPaddingPoints(Constants.TextFields.textFiedlLeftPadding)
        
    }
    
    // MARK: - Validating fields

    private func validatingFields() {
        let isEnabled = !groupSizeTextField.text!.isEmpty
            && !infectionFactorTextField.text!.isEmpty
            && !periodTextField.text!.isEmpty
        simulateButton.isEnabled = isEnabled
    }
    
    // MARK: - Private Actions methods

    @IBAction private func groupSizeTextFieldEditingChanged(_ sender: Any) {
        validatingFields()
    }
    
    @IBAction private func infectionFactorTextFieldEditingChanged(_ sender: Any) {
        validatingFields()
    }
    
    @IBAction private func periodTextFieldEditingChanged(_ sender: Any) {
        validatingFields()
    }
    
    @IBAction private func didTapSimulateButton(_ sender: Any) {
        simulateButton.zoomIn(duration: 0.1)
        
        guard let groupSizeCount = groupSizeTextField.text,
              let infectionFactorCount = infectionFactorTextField.text,
              let periodCount = periodTextField.text else { return }
        
        if Int(groupSizeCount) != nil,
           Int(infectionFactorCount) != nil,
           Int(periodCount) != nil {
            UserDataService.groupSize = Int(groupSizeCount)!
            UserDataService.infectionFactor = Int(infectionFactorCount)!
            UserDataService.period = Int(periodCount)!
        } else {
            print("Не удалось конвертировать в Int")
        }
        
        let tabBar = RootTabBarController()
        UIApplication.shared.windows.first?.rootViewController = tabBar
    }
}
