//
//  LoginView.swift
//  PostAndComment
//
//  Created by Ivan Grga on 21/09/2019.
//  Copyright © 2019 Ivan Grga. All rights reserved.
//

import UIKit

class LoginView: UIView {
    lazy var email = createLoginTextInput()
    lazy var password = createLoginTextInput()
    lazy var title = createTitle()
    lazy var button = createButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame);
        

        setup()
    }
    
    func createTitle() -> UILabel {
        let text = UILabel()
        
        text.translatesAutoresizingMaskIntoConstraints = false
        
        return text
    }
    
    func createButton() -> UIButton {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false

        return button
    }
    
    func createLoginTextInput() -> LoginTextInput {
        let input = LoginTextInput()
        
        input.translatesAutoresizingMaskIntoConstraints = false
        
        return input
    }
    
    func setupTitle() {
        title.topAnchor
            .constraint(equalTo: topAnchor, constant: 50)
            .isActive = true
        title.leftAnchor
            .constraint(equalTo: leftAnchor, constant: 20)
            .isActive = true
        title.rightAnchor
            .constraint(equalTo: rightAnchor, constant: -20)
            .isActive = true
        title.heightAnchor.constraint(equalToConstant: 50)
        title.textColor = .white
        title.font = UIFont(name: "AvenirNext-Bold", size: 32)
        title.textAlignment = .center
        title.text = "POST APP"
    }
    
    func setupEmail() {
        email.topAnchor
            .constraint(equalTo: title.bottomAnchor, constant: 50)
            .isActive = true
        email.leftAnchor
            .constraint(equalTo: leftAnchor, constant: 20)
            .isActive = true
        email.rightAnchor
            .constraint(equalTo: rightAnchor, constant: -20)
            .isActive = true
        email.labelText = "EMAIL"
    }
    
    func setupPassword() {
        password.topAnchor
            .constraint(equalTo: email.bottomAnchor, constant: 50)
            .isActive = true
        password.leftAnchor
            .constraint(equalTo: leftAnchor, constant: 20)
            .isActive = true
        password.rightAnchor
            .constraint(equalTo: rightAnchor, constant: -20)
            .isActive = true
        password.labelText = "PASSWORD"
        password.isSecureTextEntry = true
    }
    
    func setupButton() {
        button.topAnchor
            .constraint(equalTo: password.bottomAnchor, constant: 50)
            .isActive = true
        button.centerXAnchor
            .constraint(equalTo: centerXAnchor)
            .isActive = true
        button.heightAnchor
            .constraint(equalToConstant: 50)
            .isActive = true
        button.widthAnchor
            .constraint(equalToConstant: 226)
            .isActive = true
        button.backgroundColor = .clear
        button.setTitle("LOG IN", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 25
        button.alpha = 1
        button.titleLabel?.font = UIFont(name: "AvenirNext-Bold", size: 14)
        button.addTarget(self, action: #selector(onButtonClick), for: .touchDown)
        button.addTarget(self, action: #selector(onButtonRelease), for: .touchUpInside)
    }
    
    @objc func onButtonClick() {
        button.alpha = 0.3
    }
    
    @objc func onButtonRelease() {
        button.alpha = 1
    }
    
    func setup() {
        backgroundColor = UIColor(hex: 0x1C4E80)
        
        addSubview(title)
        addSubview(email)
        addSubview(password)
        addSubview(button)

        setupTitle()
        setupEmail()
        setupPassword()
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
