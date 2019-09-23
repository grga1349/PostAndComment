//
//  LoginTextInput.swift
//  PostAndComment
//
//  Created by Ivan Grga on 17/09/2019.
//  Copyright © 2019 Ivan Grga. All rights reserved.
//

import UIKit

class LoginTextInput: UIView {
    private lazy var topBorder = createBorder()
    private lazy var bottomBorder = createBorder()
    private lazy var textField = createTextField()
    private lazy var label = createLabel()
    
    private let textFieldMarginTop: CGFloat = 16
    private let textFieldMarginBottom: CGFloat = 16
    
    public var labelText: String {
        set (text) {
            label.text = text
        }
        
        get {
            if label.text == nil {
                return ""
            }
            
            return label.text!
        }
    }
    
    public var isSecureTextEntry: Bool {
        set(flag) {
            textField.isSecureTextEntry = flag
        }
        
        get {
            return textField.isSecureTextEntry
        }
    }
    
    override var intrinsicContentSize: CGSize {
        var customSize = CGSize()
        
        customSize.height =
            topBorder.intrinsicContentSize.height +
            bottomBorder.intrinsicContentSize.height +
            textField.intrinsicContentSize.height +
            label.intrinsicContentSize.height +
            textFieldMarginTop +
            textFieldMarginBottom

        return customSize
    }
    
    func createBorder() -> UIView {
        let view = UIView()
        
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        
        return view
    }
    
    func createTextField() -> UITextField {
        let field = UITextField()
        
        field.translatesAutoresizingMaskIntoConstraints = false
        field.backgroundColor = .clear
        field.textColor = .white
        field.font = UIFont(name: "AvenirNext-Regular", size: 16)
        
        return field
    }
    
    func createLabel() -> UILabel {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont(name: "AvenirNext-Bold", size: 14)
        
        return label
    }
    
    func setup() {
        backgroundColor = .clear
       
        addSubview(bottomBorder)
        addSubview(topBorder)
        addSubview(textField)
        addSubview(label)
        
        setupBottomBorder()
        setupTopBorder()
        setupTextField()
        setupLabel()
    }
    
    func setupLabel() {
        label.topAnchor
            .constraint(equalTo: topAnchor)
            .isActive = true
        label.leftAnchor
            .constraint(equalTo: leftAnchor)
            .isActive = true
        label.rightAnchor
            .constraint(equalTo: rightAnchor)
            .isActive = true
    }
    
    func setupTextField() {
        textField.topAnchor
            .constraint(equalTo: topBorder.bottomAnchor, constant: textFieldMarginTop)
            .isActive = true
        textField.leftAnchor
            .constraint(equalTo: leftAnchor, constant: 20)
            .isActive = true
        textField.rightAnchor
            .constraint(equalTo: rightAnchor, constant: -20)
            .isActive = true
    }
    
    func setupBottomBorder() {
        bottomBorder.topAnchor
            .constraint(equalTo: textField.bottomAnchor, constant: textFieldMarginBottom)
            .isActive = true
        bottomBorder.bottomAnchor
            .constraint(equalTo: bottomBorder.topAnchor, constant: 1)
            .isActive = true
        bottomBorder.leftAnchor
            .constraint(equalTo: leftAnchor)
            .isActive = true
        bottomBorder.rightAnchor
            .constraint(equalTo: rightAnchor)
            .isActive = true
    }
    
    func setupTopBorder() {
        topBorder.topAnchor
            .constraint(equalTo: label.bottomAnchor)
            .isActive = true
        topBorder.bottomAnchor
            .constraint(equalTo: topBorder.topAnchor, constant: 1)
            .isActive = true
        topBorder.leftAnchor
            .constraint(equalTo: leftAnchor)
            .isActive = true
        topBorder.rightAnchor
            .constraint(equalTo: rightAnchor)
            .isActive = true
    }
    
    convenience init () {
        self.init(frame: CGRect.zero)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
}
