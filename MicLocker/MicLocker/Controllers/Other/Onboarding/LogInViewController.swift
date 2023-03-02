//
//  LogInViewController.swift
//  MicLocker
//
//  Created by James McDougall on 2/28/23.
//

import UIKit

class LogInViewController: UIViewController {
    
    struct Constants {
        static let cornerRadius: CGFloat = 8.0
    }
    
    private let headerView: UIView = {
        let header = UIView()
        header.clipsToBounds = true
        let backgroundImageView = UIImageView(image: UIImage(named: "MicLockerLogoClear"))
        header.addSubview(backgroundImageView)
        return header
    }()
    
    private let fontView: UIView = {
        let fontView = UIView()
        fontView.clipsToBounds = true
        let backgroundImageView = UIImageView(image: UIImage(named: "MicLockerFont"))
        fontView.addSubview(backgroundImageView)
        return fontView
    }()
    
    private let usernameEmailField: UITextField = {
        let field = UITextField()
        field.placeholder = "Username or Email"
        field.returnKeyType = .next
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.layer.masksToBounds = true
        field.layer.cornerRadius = Constants.cornerRadius
        field.backgroundColor = .secondarySystemBackground
        return field
    }()
    
    private let passwordField: UITextField = {
        let field = UITextField()
        field.isSecureTextEntry = true
        field.placeholder = "Password"
        field.returnKeyType = .next
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.layer.masksToBounds = true
        field.layer.cornerRadius = Constants.cornerRadius
        field.backgroundColor = .secondarySystemBackground
        return field
    }()
    
    private let logInButton: UIButton = {
        let button = UIButton()
        button.setTitle("Log In", for: .normal)
        button.layer.masksToBounds = true
        button .layer.cornerRadius = Constants.cornerRadius
        button.backgroundColor = UIColor.micLockerPurple
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    private let termsButton: UIButton = {
        return UIButton()
    }()
    
    private let privacyButton: UIButton = {
        return UIButton()
    }()
    
    private let createAccountButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(.label, for: .normal)
        button.setTitle("New User? Create an Account", for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        view.backgroundColor = .systemBackground
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        headerView.frame = CGRect(x: 0, y: view.safeAreaInsets.top, width: view.frameWidth, height: view.frameHeight/2.0)
        
        //FIXME: Put FontView here
        
        usernameEmailField.frame = CGRect(x: 25, y: headerView.frameBottom + 10, width: view.frameWidth - 50, height: 52)
        
        passwordField.frame = CGRect(x: 25, y: usernameEmailField.frameBottom + 10, width: view.frameWidth - 50, height: 52)
        
        logInButton.frame = CGRect(x: 25, y: passwordField.frameBottom + 10, width: view.frameWidth - 50, height: 52)
        
        createAccountButton.frame = CGRect(x: 25, y: logInButton.frameBottom + 10, width: view.frameWidth - 50, height: 52)
        
        configureHeaderView()
    }
    
    private func configureHeaderView() {
        guard headerView.subviews.count == 1 else {
            return
        }
        
        guard var backgroundView = headerView.subviews.first else {
            return
        }
        
        backgroundView.frame = headerView.bounds
    }
    
    private func addSubviews() {
        
        view.addSubview(headerView)
        view.addSubview(usernameEmailField)
        view.addSubview(passwordField)
        view.addSubview(logInButton)
        view.addSubview(termsButton)
        view.addSubview(privacyButton)
        view.addSubview(createAccountButton)
    }
    
    @objc private func didTapLoginButton() {
        
    }
    
    @objc private func didTapTermsButton() {
        
    }
    
    @objc private func didTapPrivacyButton() {
        
    }
    
    @objc private func didTapCreateAccountButton() {
        
    }
    
    
}
