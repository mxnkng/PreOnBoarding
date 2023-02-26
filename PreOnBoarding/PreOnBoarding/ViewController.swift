//
//  ViewController.swift
//  PreOnBoarding
//
//  Created by 이민경 on 2023/02/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var firstLoadButton: UIButton!
    @IBOutlet var secondLoadButton: UIButton!
    @IBOutlet var thirdLoadButton: UIButton!
    @IBOutlet var fourthLoadButton: UIButton!
    @IBOutlet var fifthLoadButton: UIButton!
    
    @IBOutlet var loadAllButton: UIButton!
    
    @IBOutlet var firstImageView: UIImageView!
    @IBOutlet var secondImageView: UIImageView!
    @IBOutlet var thirdImageView: UIImageView!
    @IBOutlet var fourthImageView: UIImageView!
    @IBOutlet var fifthImageView: UIImageView!
    
    let firstImageURL: String = "https://image.ajunews.com/content/image/2019/12/25/20191225170826943516.jpg"
    let secondImageURL: String = "https://i.pinimg.com/originals/1d/f6/5a/1df65a357351d62599c20fb30bee2634.jpg"
    let thirdImageURL: String = "https://image-notepet.akamaized.net/resize/620x-/seimage/20191030%2F0ccebc8074e2ddf467d85ce3d8124df9.jpg"
    let fourthImageURL: String = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSV_IgRHJZum1NpPrFhxBmD1oxzYLL0ipVD6zAtoc6Izg8cnCUkMwD4-vBA9MogJy9y9yg&usqp=CAU"
    let fifthImageURL: String = "https://contents.creators.mypetlife.co.kr/content/uploads/2019/10/31205223/518_1118_188.jpg"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUI()
    }
    
    func setUI() {
        firstImageView.image = UIImage(systemName: "photo")
        secondImageView.image = UIImage(systemName: "photo")
        thirdImageView.image = UIImage(systemName: "photo")
        fourthImageView.image = UIImage(systemName: "photo")
        fifthImageView.image = UIImage(systemName: "photo")
        
        firstLoadButton.setTitle("Load", for: .normal)
        secondLoadButton.setTitle("Load", for: .normal)
        thirdLoadButton.setTitle("Load", for: .normal)
        fourthLoadButton.setTitle("Load", for: .normal)
        fifthLoadButton.setTitle("Load", for: .normal)
        loadAllButton.setTitle("Load All Images", for: .normal)
    }
    
    @IBAction func tappedFirstLoadButton(_ sender: Any) {
        let url = URL(string: firstImageURL)
        firstImageView.load(url: url!)
    }
    
    @IBAction func tappedSecondLoadButton(_ sender: Any) {
        let url = URL(string: secondImageURL)
        secondImageView.load(url: url!)
    }
    
    @IBAction func tappedThirdLoadButton(_ sender: Any) {
        let url = URL(string: thirdImageURL)
        thirdImageView.load(url: url!)
    }
    
    @IBAction func tappedFourthLoadButton(_ sender: Any) {
        let url = URL(string: fourthImageURL)
        fourthImageView.load(url: url!)
    }
    
    @IBAction func tappedFifthLoadButton(_ sender: Any) {
        let url = URL(string: fifthImageURL)
        fifthImageView.load(url: url!)
    }
    
    @IBAction func tappedLoadAllButton(_ sender: Any) {
        tappedFirstLoadButton(self)
        tappedSecondLoadButton(self)
        tappedThirdLoadButton(self)
        tappedFourthLoadButton(self)
        tappedFifthLoadButton(self)
    }
}

