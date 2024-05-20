//
//  SaveContentsViewController.swift
//  Netfilx
//
//  Created by 여성은 on 5/16/24.
//

import UIKit

class SaveContentsViewController: UIViewController {
    
    
    @IBOutlet var mainSubscibeLabel: UILabel!
    @IBOutlet var subSubscirbeLabel: UILabel!
    @IBOutlet var dummyImageView: UIImageView!
    
    @IBOutlet var settingButton: UIButton!
    @IBOutlet var lookAroundButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black

        self.title = "저장한 콘텐츠 목록"
        
        mainSubscibeLabel.text = "'나만의 자동 저장'기능"
        mainSubscibeLabel.textAlignment = .center
        mainSubscibeLabel.font = .systemFont(ofSize: 18, weight: .semibold)
        mainSubscibeLabel.textColor = .white
        
        subSubscirbeLabel.text = "취향에 맞는 영화와 시리즈를 자동으로 저장해 드립니다.\n 디바이스에 언제나 시청할 콘텐츠가 준비되니 지루할 틈이 없어요."
        subSubscirbeLabel.textAlignment = .center
        subSubscirbeLabel.numberOfLines = 0
        subSubscirbeLabel.font = .systemFont(ofSize: 10, weight: .regular)
        subSubscirbeLabel.textColor = .white
        
        dummyImageView.image = UIImage.dummy
        
        settingButton.setTitle("설정하기", for: .normal)
        settingButton.layer.cornerRadius = 3
        settingButton.setTitleColor(.white, for: .normal)
        settingButton.backgroundColor = .blue
 
        lookAroundButton.setTitle("저장 가능한 콘텐츠 살펴보기", for: .normal)
        lookAroundButton.setTitleColor(.black, for: .normal)
        lookAroundButton.layer.cornerRadius = 3
        lookAroundButton.backgroundColor = .white
        lookAroundButton.setTitleColor(.black, for: .normal)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // navigation Title 색상변경
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        self.navigationController?.navigationBar.titleTextAttributes = textAttributes
    }
    

    

}
