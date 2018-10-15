//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Muhammed Sikandar Khan on 08/10/18.
//  Copyright © 2018 Sikandar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView1: UIImageView!
    
    var ansArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomIndex : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func askMeButton(_ sender: Any) {
       randomGen()
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomGen()
    }
    
    func randomGen(){
        randomIndex = Int.random(in: 0 ... 4)
        imageView1.image = UIImage(named: ansArray[randomIndex])
    }
}

