//
//  LoginViewController.swift
//  application
//
//  Created by Andrey Samchenko on 01.10.2021.
//

import UIKit

class LoginViewController: UIViewController {

    private let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Войти", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .darkGray
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let registerButton: UIButton = {
        let button = UIButton()
        button.setTitle("Регистрация", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .darkGray
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        setConstraints()
    }
}

//@objc private func addButtonTapped() {
//    let scheduleOption = RegistrationViewController()
//    navigationController?.pushViewController(scheduleOption, animated: true)
//}


//MARK: Constraints

extension LoginViewController {
    
    func setConstraints() {
        
        view.addSubview(loginButton)
        NSLayoutConstraint.activate([
            loginButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            loginButton.widthAnchor.constraint(equalToConstant: 100),
            loginButton.heightAnchor.constraint(equalToConstant: 45)
        ])
        
        view.addSubview(registerButton)
        NSLayoutConstraint.activate([
            registerButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            registerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            registerButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            registerButton.widthAnchor.constraint(equalToConstant: 100),
            registerButton.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
}
