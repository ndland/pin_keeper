//
//  ViewController.swift
//  pinkeeper
//
//  Created by Nicholas Land on 5/18/18.
//  Copyright © 2018 Nick Land. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func calculateScore(frame: Frame) -> Int {
        var secondBallNumberOfPins = 0
        if frame.secondBall == Mark.Spare {
            secondBallNumberOfPins = 10 - frame.firstBall.rawValue
        }
        if let secondBall = frame.secondBall?.rawValue {
            return frame.firstBall.rawValue + secondBallNumberOfPins
        } else {
            return frame.firstBall.rawValue
        }
    }
}

