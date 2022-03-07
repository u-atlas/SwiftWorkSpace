//
//  SettingViewController.swift
//  OddEvenGame
//
//  Created by 조영익 on 2022/03/07.
//

import UIKit

protocol SettingDelegate {
    func getBallsCount(ballsCount: Int)
}

class SettingViewController: UIViewController {

    @IBOutlet weak var ballsCountTf: UITextField!
    
    var settingDelegate: SettingDelegate?
    
    var defaultBallsCount = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func completeBtnPressed(_ sender: Any) {
        
        guard let ballsStr = self.ballsCountTf.text, let balls = Int(ballsStr) else {
            self.settingDelegate?.getBallsCount(ballsCount: self.defaultBallsCount)
            self.dismiss(animated: true, completion: nil)
            return
        }
    
        self.settingDelegate?.getBallsCount(ballsCount: balls)
        self.dismiss(animated: true, completion: nil)
    }
}
