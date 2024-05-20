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
        
        setTextFieldUI(textField: emailTextField, placeholderText: "이메일 주소 또는 전화번호")
        setTextFieldUI(textField: passwordTextField, placeholderText: "비밀번호")
        setTextFieldUI(textField: nickNameTextField, placeholderText: "닉네임")
        setTextFieldUI(textField: locationTextField, placeholderText: "위치")
        setTextFieldUI(textField: recommendCodeTextField, placeholderText: "추천 코드 입력")
        
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
    
    func setTextFieldUI(textField: UITextField, placeholderText: String) {
        textField.textColor = .white
        textField.textAlignment = .center
        textField.backgroundColor = .darkGray
        textField.attributedPlaceholder = NSAttributedString(string: placeholderText, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])

    }
    

}
