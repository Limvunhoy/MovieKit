//
//  LoginView.swift
//  MovieKit
//
//  Created by IG_Se7enzZ on 3/6/21.
//

import UIKit

class LoginView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initView()
        
    }
    
    private func initView() {
        addSubview(ivLogo)
        addSubview(tfUsername)
        addSubview(tfPassword)
        addSubview(btnLogin)
        addSubview(lbMemberYet)
        addSubview(btnForgotPassword)
        
        ivLogo.snp.makeConstraints { (make) in
            make.top.equalTo(snp.top).offset(scale(value: 80))
            make.width.height.equalTo(scale(value: 100))
            make.centerX.equalToSuperview()
        }
        
        tfUsername.snp.makeConstraints { (make) in
            make.top.equalTo(ivLogo.snp.bottom).offset(scale(value: 38))
            make.left.right.equalToSuperview().inset(scale(value: 16))
            make.height.equalTo(scale(value: 40))
        }
        
        tfPassword.snp.makeConstraints { (make) in
            make.top.equalTo(tfUsername.snp.bottom).offset(scale(value: 5))
            make.left.right.equalToSuperview().inset(scale(value: 16))
            make.height.equalTo(scale(value: 40))
        }
        
        btnLogin.snp.makeConstraints { (make) in
            make.top.equalTo(tfPassword.snp.bottom).offset(scale(value: 24))
            make.left.right.equalToSuperview().inset(scale(value: 16))
            make.height.equalTo(scale(value: 40))
        }
        
        lbMemberYet.snp.makeConstraints { (make) in
            make.top.equalTo(btnLogin.snp.bottom).offset(scale(value: 28))
            make.left.right.equalToSuperview().inset(scale(value: 16))
        }
        
        btnForgotPassword.snp.makeConstraints { (make) in
            make.top.equalTo(lbMemberYet.snp.bottom).offset(scale(value: 28))
            make.centerX.equalToSuperview()
        }
    }
    
    lazy var ivLogo: UIImageView = {
        var iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        iv.image = UIImage(named: "MovieKit_Logo")
        return iv
    }()
    
    lazy var tfUsername: UITextFieldPadding = {
        var tf = UITextFieldPadding(padding: .init(top: 0, left: scale(value: 10), bottom: 0, right: scale(value: 10)))
        tf.backgroundColor = Color.TEXT_FIELD_COLOR
        tf.layer.cornerRadius = 6
        tf.placeholder = "Email"
        tf.font = .systemFont(ofSize: scale(value: 15))
        return tf
    }()
    
    lazy var tfPassword: UITextFieldPadding = {
        var tf = UITextFieldPadding(padding: .init(top: 0, left: scale(value: 10), bottom: 0, right: scale(value: 10)))
        tf.backgroundColor = Color.TEXT_FIELD_COLOR
        tf.layer.cornerRadius = 6
        tf.placeholder = "Password"
        tf.font = .systemFont(ofSize: scale(value: 15))
        return tf
    }()
    
    lazy var btnLogin: UIButton = {
        var btn = UIButton(type: .system)
        btn.backgroundColor = Color.SECONDARY_COLOR
        btn.setTitle("Login", for: .normal)
        btn.setTitleColor(.systemBackground, for: .normal)
        btn.layer.cornerRadius = 6
        btn.titleLabel?.font = .systemFont(ofSize: scale(value: 15), weight: .semibold)
        return btn
    }()
    
    lazy var lbMemberYet: UILabel = {
        var lb = UILabel()
        lb.text = "Not a member yet? Start your free month!"
        lb.textColor = .label
        lb.textAlignment = .center
        lb.numberOfLines = 1
        lb.font = .systemFont(ofSize: scale(value: 14), weight: .semibold)
        return lb
    }()
    
    lazy var btnForgotPassword: UIButton = {
        var btn = UIButton(type: .system)
        btn.backgroundColor = .clear
        btn.setTitle("Forgot Your Passwrod", for: .normal)
        btn.setTitleColor(Color.SECONDARY_COLOR, for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: scale(value: 15))
        return btn
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
