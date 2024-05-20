//
//  HomeViewController.swift
//  Netfilx
//
//  Created by 여성은 on 5/16/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    @IBOutlet var homeViewNavigationTitle: UINavigationItem!

    @IBOutlet var mainPosterImageView: UIImageView!
    @IBOutlet var secondPosterImageView: UIImageView!
    @IBOutlet var thirdPosterImageView: UIImageView!
    @IBOutlet var fourthPosterImageView: UIImageView!
    
    @IBOutlet var playButton: UIButton!
    @IBOutlet var likeButton: UIButton!
    
    @IBOutlet var risingContentsLabel: UILabel!
    
    @IBOutlet var secondTop10ImageView: UIImageView!
    @IBOutlet var thirdTop10ImageView: UIImageView!
    @IBOutlet var fourthTop10ImageView: UIImageView!
    
    
    @IBOutlet var secondNewEpisodeImageView: UIImageView!
    @IBOutlet var thirdNewEpisodeImageView: UIImageView!
    @IBOutlet var fourthNewEpisodeImageView: UIImageView!
    
    
    var movies = ["극한직업", "노량", "도둑들", "베테랑","1", "2", "3", "4", "5"]
    
    var boolArray = [false, true, true]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        playButton.setImage(UIImage.playNormal, for: .normal)
        playButton.setImage(UIImage.playHighlighted, for: .highlighted)
        
        likeButton.setTitleColor(.lightGray, for: .normal)
        likeButton.backgroundColor = .darkGray
        likeButton.layer.cornerRadius = 3
        likeButton.setImage(UIImage(systemName: "plus", variableValue: 0), for: .normal)
        likeButton.tintColor = .lightGray
        likeButton.setTitle("내가 찜한 리스트", for: .normal)
    

        risingContentsLabel.text = "지금 뜨는 콘텐츠"
        risingContentsLabel.textColor = .white
        risingContentsLabel.font = .systemFont(ofSize: 15, weight: .bold)
        
        mainPosterImageView.image = UIImage(named: movies[0])
        mainPosterImageView.layer.cornerRadius = 10
        mainPosterImageView.contentMode = .scaleAspectFill
        
        secondPosterImageView.image = UIImage(named: movies[1])
        secondPosterImageView.layer.cornerRadius = 5
        secondPosterImageView.contentMode = .scaleAspectFill
        
        thirdPosterImageView.image = UIImage(named: movies[2])
        thirdPosterImageView.layer.cornerRadius = 5
        thirdPosterImageView.contentMode = .scaleAspectFill
        
        fourthPosterImageView.image = UIImage(named: movies[3])
        fourthPosterImageView.layer.cornerRadius = 5
        fourthPosterImageView.contentMode = .scaleAspectFill
        
        setSubImageView(image: secondPosterImageView, index: 1)
        setSubImageView(image: thirdPosterImageView, index: 2)
        setSubImageView(image: fourthPosterImageView, index: 3)
        
        secondTop10ImageView.image = UIImage.top10Badge
        thirdTop10ImageView.image = UIImage.top10Badge
        thirdTop10ImageView.isHidden = true
        fourthTop10ImageView.image = UIImage.top10Badge
        fourthTop10ImageView.isHidden = true
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        self.navigationController?.navigationBar.titleTextAttributes = textAttributes
    }
    
    
    @IBAction func playButtonTapped(_ sender: UIButton) {
        
        movies.shuffle()
        mainPosterImageView.image = UIImage(named: movies[0])
        secondPosterImageView.image = UIImage(named: movies[1])
        thirdPosterImageView.image = UIImage(named: movies[2])
        fourthPosterImageView.image = UIImage(named: movies[3])
        
        boolArray.shuffle()
        secondTop10ImageView.isHidden = boolArray[0]
        thirdTop10ImageView.isHidden = boolArray[1]
        fourthTop10ImageView.isHidden = boolArray[2]
    }
    
    func setSubImageView(image: UIImageView, index: Int) {
        image.image = UIImage(named: movies[index])
        image.layer.cornerRadius = 5
        image.contentMode = .scaleAspectFill

    }


}
