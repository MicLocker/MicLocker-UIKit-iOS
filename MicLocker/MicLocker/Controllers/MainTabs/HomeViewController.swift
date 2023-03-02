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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        notAuthenticated()
    }
    
    private func notAuthenticated() {
        //FIXME: Change loginVC to not show if there is no current user
        if Auth.auth().currentUser != nil {
            let loginVC = LogInViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: false)
        } else {
            
        }
            
    }
}
