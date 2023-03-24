//
//  ViewController.swift
//  ToDo list without sb
//
//  Created by Temp on 19/03/23.
//

import UIKit


class ViewController: UIViewController {
    
    let separatorView = UIView()
    
    private let textFieldPassword = UITextField()
    private let LoginButton = UIButton(type: .system)
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Registration"
        label.textColor = .white
        label.font = UIFont(name: "Avenir-Light", size: 36)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(SetUpTextFieldLogin)
        view.addSubview(signUpButton)
        SetUpTextFieldPassword()
        setUpButton()
        view.backgroundColor = UIColor(red: 25/255, green: 25/255, blue: 25/255, alpha: 1)
        titleLabel.frame = CGRect(x: 100, y: 200, width: 200, height: 40)
        view.addSubview(titleLabel)
        view.addSubview(separatorView)
        separatorView.backgroundColor = .lightGray
        separatorView.frame = CGRect(x: 50, y: 327, width: 300, height: 1)
        navigationController?.navigationBar.barStyle = .black
    }
    
    private let SetUpTextFieldLogin: UITextField = {
        return UITextField().textField(placeholder: " Login", isSecure: false)
    }()
    
    
    private func SetUpTextFieldPassword(){
        textFieldPassword.frame = CGRect(x: 50, y: 350, width: 300, height: 30)
        textFieldPassword.borderStyle = .none
        textFieldPassword.font = UIFont.systemFont(ofSize: 16)
        textFieldPassword.attributedPlaceholder =  NSAttributedString(
            string: " Password",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        textFieldPassword.textColor = UIColor.white
        textFieldPassword.isSecureTextEntry = true
        let separatorView1 = UIView()
        view.addSubview(separatorView1)
        separatorView1.backgroundColor = .lightGray
        separatorView1.frame = CGRect(x: 50, y: 377, width: 300, height: 1)
        
        view.addSubview(textFieldPassword)
        textFieldPassword.textColor = UIColor.white
    }
    
    private func setUpButton(){
        LoginButton.setTitle("Log In", for: .normal)
        LoginButton.setTitleColor(.white, for: .normal)
        LoginButton.backgroundColor = .blue
        LoginButton.frame = CGRect(x: 50, y: 400, width: 300, height: 40)
        LoginButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        LoginButton.layer.cornerRadius = 5
        view.addSubview(LoginButton)
        
    }
    
    private var signUpButton: UIButton{
        let signUpButton = UIButton(type: .system)
        signUpButton.setTitle("Sign up", for: .normal)
        signUpButton.setTitleColor(.blue, for: .normal)
        signUpButton.frame = CGRect(x: 150, y: 750, width: 100, height: 50)
        signUpButton.addTarget(self, action: #selector(showSignUp), for: .touchUpInside)
        view.addSubview(signUpButton)
        return signUpButton
    };
    
    @objc func showSignUp(){
        let vc = SignUpController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @objc func buttonAction(sender: UIButton!){
        print("Button is pressed")
    }
}

