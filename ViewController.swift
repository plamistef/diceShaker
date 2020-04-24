//
//  ViewController.swift
//  dice
//
//  Created by Plam Stefanova on 4/24/20.
//  Copyright © 2020 Plam Stefanova. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
    
    @IBOutlet weak var leftDie: UIImageView!
    @IBOutlet weak var rightDie: UIImageView!
    
    var motionManager = CMMotionManager()
    var queue = OperationQueue()
    
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            let leftNumber = arc4random_uniform(6) + 1
            let rightNumber = arc4random_uniform(6) + 1
            
            leftDie.image = UIImage.init(named: "Dice\(leftNumber)")
            rightDie.image = UIImage.init(named: "Dice\(rightNumber)")
            
        }
    }
 

}

