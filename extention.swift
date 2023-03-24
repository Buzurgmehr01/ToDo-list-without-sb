//
//  extention.swift
//  ToDo list without sb
//
//  Created by Temp on 22/03/23.
//

import UIKit

extension UITextField{
    
    
    func textField(placeholder: String, isSecure: Bool) -> UITextField{
        let textFieldLogin = UITextField()
        textFieldLogin.frame = CGRect(x: 50, y: 300, width: 300, height: 30)
        textFieldLogin.borderStyle = .none
        textFieldLogin.isSecureTextEntry = isSecure
        textFieldLogin.font = UIFont.systemFont(ofSize: 16)
        textFieldLogin.attributedPlaceholder =  NSAttributedString(
            string: placeholder,
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        textFieldLogin.textColor = UIColor.white
        return textFieldLogin
    }
}
