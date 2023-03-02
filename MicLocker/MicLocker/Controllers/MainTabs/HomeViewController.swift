//
//  HomeViewController.swift
//  MicLocker
//
//  Created by James McDougall on 3/1/23.
//

import UIKit
import FirebaseCore
import FirebaseAuth

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        notAuthenticated()
    }
    
    private func notAuthenticated() {
        if Auth.auth().currentUser == nil {
            let loginVC = LogInViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: false)
        }
    }
}
