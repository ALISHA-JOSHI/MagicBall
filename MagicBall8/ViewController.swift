//
//  ViewController.swift
//  MagicBall8
//
//  Created by Alisha Joshi on 03/11/23.
//

import UIKit

class ViewController: UIViewController {

    //MARK: View Properties
    @IBOutlet weak var imageView: UIImageView!
    
    //MARK: Data Properties
    let ballImageArray = ["Ball1", "Ball2", "Ball3", "Ball4", "Ball5" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.generateRandomNumber()
        
    }

    //MARK: Helper Methods
    func generateRandomNumber() -> Int {
        let randomNumber = Int.random(in: 0...4)
        return randomNumber
    }
    //MARK: Action Handlers
    @IBAction func askButtonPressed(_ sender: Any) {
        imageView.image = UIImage(named: ballImageArray[self.generateRandomNumber()])
    }
    
}

