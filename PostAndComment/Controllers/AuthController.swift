//
//  AuthController.swift
//  PostAndComment
//
//  Created by Ivan Grga on 17/09/2019.
//  Copyright © 2019 Ivan Grga. All rights reserved.
//

import UIKit

class AuthController: UIViewController {
    var mainView: LoginView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    func setup() {
        mainView = LoginView(frame: self.view.frame)
        
        view.addSubview(mainView)
    }
}
