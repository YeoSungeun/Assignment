//
//  NewHotViewController.swift
//  Netfilx
//
//  Created by 여성은 on 5/16/24.
//

import UIKit

class NewHotViewController: UIViewController {
    
    @IBOutlet var searchLabel: UILabel!
    @IBOutlet var searchTextField: UITextField!
    @IBOutlet var searchSymbolImageView: UIImageView!
    
    @IBOutlet var releasedButton: UIButton!
    @IBOutlet var hotContentButton: UIButton!
    @IBOutlet var topTenButton: UIButton!
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var subResultLabel: UILabel!
    
    // plain < iOS15+ >>>
    // default < legacy
    // 즉, default 스타일을 다루는 버튼 코드와
    // plain 스타일을 다루는 버튼 코드가 다름
    // Image Rendering Mode: template vs original
    @IBOutlet var testButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "NEW & HOT 검색"
        view.backgroundColor = .black
        
        searchSymbolImageView.image = UIImage(systemName: "magnifyingglass")
        searchSymbolImageView.tintColor = .lightGray
        searchTextField.attributedPlaceholder = NSAttributedString(string: "게임, 시리즈, 영화를 검색하세요...", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        searchTextField.backgroundColor = .darkGray
        
        releasedButton.layer.cornerRadius = 18
        releasedButton.setImage(UIImage.blue, for: .normal)
        
        releasedButton.setImage(UIImage.blue, for: .normal)
        releasedButton.setTitle("공개 예정", for: .normal)
        releasedButton.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        releasedButton.setTitleColor(.black, for: .normal)
        releasedButton.backgroundColor = .white
        
        hotContentButton.layer.cornerRadius = 18
        hotContentButton.setImage(UIImage.pink, for: .normal)
        hotContentButton.setTitle("모두의 인기 콘텐츠", for: .normal)
        hotContentButton.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        hotContentButton.setTitleColor(.white, for: .normal)
        hotContentButton.backgroundColor = .clear
        
        topTenButton.layer.cornerRadius = 18
        topTenButton.setImage(UIImage.turquoise, for: .normal)
        topTenButton.setTitle("TOP 10 시리즈", for: .normal)
        topTenButton.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        topTenButton.setTitleColor(.white, for: .normal)
        topTenButton.backgroundColor = .clear
        
        resultLabel.text = "이런! 찾으시는 작품이 없습니다."
        resultLabel.font = .systemFont(ofSize: 20, weight: .bold)
        resultLabel.textAlignment = .center
        resultLabel.textColor = .white
        
        subResultLabel.text = "다른 영화, 시리즈, 배우 감독 또는 장르를 검색해 보세요."
        subResultLabel.font = .systemFont(ofSize: 15, weight: .regular)
        subResultLabel.textColor = .white
        subResultLabel.textAlignment = .center
        
        /*
        testButton.setTitle("테스트버튼", for: .normal)
        // Image Rendering Mode 코드로 설정하는 방법
        var image = UIImage(named: "pink")?.withRenderingMode(.alwaysOriginal)
//        let image = UIImage(systemName: "star")
        testButton.setImage(image, for: .normal)
        testButton.titleLabel?.font = .boldSystemFont(ofSize: 30)
        
        */

    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // navigation Title 색상변경
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        self.navigationController?.navigationBar.titleTextAttributes = textAttributes
    }

    
    @IBAction func releasedButtonTapped(_ sender: UIButton) {
        releasedButton.setTitleColor(.black, for: .normal)
        releasedButton.backgroundColor = .white
        
        
        hotContentButton.setTitleColor(.white, for: .normal)
        hotContentButton.backgroundColor = .clear
        
        
        topTenButton.setTitleColor(.white, for: .normal)
        topTenButton.backgroundColor = .clear
        
        resultLabel.text = "이런! 찾으시는 작품이 없습니다."
        resultLabel.font = .systemFont(ofSize: 20, weight: .bold)
        resultLabel.textAlignment = .center
        resultLabel.textColor = .white
        
        subResultLabel.text = "다른 영화, 시리즈, 배우 감독 또는 장르를 검색해 보세요."
        subResultLabel.font = .systemFont(ofSize: 15, weight: .regular)
        subResultLabel.textColor = .white
        subResultLabel.textAlignment = .center
    }

    
    
    @IBAction func newHotButtonTapped(_ sender: UIButton) {
        
        releasedButton.setTitleColor(.white, for: .normal)
        releasedButton.backgroundColor = .clear
        
        
        hotContentButton.setTitleColor(.black, for: .normal)
        hotContentButton.backgroundColor = .white
        
        
        topTenButton.setTitleColor(.white, for: .normal)
        topTenButton.backgroundColor = .clear
        
        resultLabel.text = "모두의 인기 콘텐츠를 준비중 입니다!"
        resultLabel.font = .systemFont(ofSize: 20, weight: .bold)
        resultLabel.textAlignment = .center
        resultLabel.textColor = .white
        
        subResultLabel.text = "조금만 기다려 주세요!!"
        subResultLabel.font = .systemFont(ofSize: 15, weight: .regular)
        subResultLabel.textColor = .white
        subResultLabel.textAlignment = .center
    }
    
    
    @IBAction func topTenButtonTapped(_ sender: UIButton) {
        
        releasedButton.setTitleColor(.white, for: .normal)
        releasedButton.backgroundColor = .clear
        
        
        hotContentButton.setTitleColor(.white, for: .normal)
        hotContentButton.backgroundColor = .clear
        
        
        topTenButton.setTitleColor(.black, for: .normal)
        topTenButton.backgroundColor = .white
        
        resultLabel.text = "TOP 10 시리즈를 선택 하셨습니다."
        resultLabel.font = .systemFont(ofSize: 20, weight: .bold)
        resultLabel.textAlignment = .center
        resultLabel.textColor = .white
        
        subResultLabel.text = "목록을 보시려면 Top10 목록으로 이동해 주세요~!"
        subResultLabel.font = .systemFont(ofSize: 15, weight: .regular)
        subResultLabel.textColor = .white
        subResultLabel.textAlignment = .center
    }
    
    
    @IBAction func textFieldReturnTapped(_ sender: Any) {
    }
    


}
