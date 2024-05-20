//
//  SignUpViewController.swift
//  Netfilx
//
//  Created by 여성은 on 5/17/24.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet var logoLabel: UILabel!
    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var nickNameTextField: UITextField!
    @IBOutlet var locationTextField: UITextField!
    @IBOutlet var recommendCodeTextField: UITextField!
    
    @IBOutlet var signUpButton: UIButton!
    
    @IBOutlet var addInfoSwitchLabel: UILabel!
    @IBOutlet var addInfoSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        logoLabel.text = "YEOFLIX"
        logoLabel.textColor = .red
        logoLabel.textAlignment = .center
        logoLabel.font = .systemFont(ofSize: 30, weight: .heavy)
        
        emailTextField.textColor = .white
        emailTextField.textAlignment = .center
        emailTextField.backgroundColor = .darkGray
        emailTextField.attributedPlaceholder = NSAttributedString(string: "이메일 주소 또는 전화번호", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        
        passwordTextField.textColor = .white
        passwordTextField.textAlignment = .center
        passwordTextField.backgroundColor = .darkGray
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "비밀번호", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        passwordTextField.keyboardType = .numberPad
      
        
        nickNameTextField.textColor = .white
        nickNameTextField.textAlignment = .center
        nickNameTextField.backgroundColor = .darkGray
        nickNameTextField.attributedPlaceholder = NSAttributedString(string: "닉네임", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        
        locationTextField.textColor = .white
        locationTextField.textAlignment = .center
        locationTextField.backgroundColor = .darkGray
        locationTextField.attributedPlaceholder = NSAttributedString(string: "위치", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        
        recommendCodeTextField.textColor = .white
        recommendCodeTextField.textAlignment = .center
        recommendCodeTextField.backgroundColor = .darkGray
        recommendCodeTextField.attributedPlaceholder = NSAttributedString(string: "추천 코드 입력", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        
        signUpButton.setTitle("회원가입", for: .normal)
        signUpButton.setTitleColor(.black, for: .normal)
        signUpButton.backgroundColor = .white
        signUpButton.layer.cornerRadius = 5
        
        addInfoSwitchLabel.text = "추가 정보 입력"
        addInfoSwitchLabel.textColor = .white
        addInfoSwitchLabel.font = .systemFont(ofSize: 15)
        
        addInfoSwitch.onTintColor = .red
        addInfoSwitch.thumbTintColor = .white

    
    }
    

    @IBAction func signUpButtonTapped(_ sender: UIButton) {
        print("회원가입 버튼")
        view.endEditing(true)
        print("Git practice")
    }
    

}
