//
//  LoginViewController.swift
//  MovieKit
//
//  Created by IG_Se7enzZ on 3/6/21.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    
    let loginView = LoginView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleDismissKeyboard)))
        initView()
    }
    
    private func initView() {
        view.addSubview(loginView)
        
        loginView.snp.makeConstraints { (make) in
            make.top.left.bottom.right.equalTo(view.safeAreaLayoutGuide)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
}


// Private Func
extension LoginViewController {
    @objc private func handleDismissKeyboard() {
        view.endEditing(false)
    }
}
