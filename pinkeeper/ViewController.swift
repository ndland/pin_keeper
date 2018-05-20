//
//  ViewController.swift
//  pinkeeper
//
//  Created by Nicholas Land on 5/18/18.
//  Copyright © 2018 Nick Land. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var totalScore: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    fileprivate func maybeSetSecondBall(frame: Frame) -> Int {
        if frame.secondBall == nil {
            return 0
        }
        if frame.secondBall == Mark.Spare {
            return 10 - frame.firstBall.rawValue
        } else {
            return frame.secondBall!.rawValue
        }
    }
    
    func calculateScore(frames: Array<Frame>) -> Int {
        for frame in frames {
            if maybeSetSecondBall(frame: frame) != 0 {
                totalScore += frame.firstBall.rawValue + maybeSetSecondBall(frame: frame)
            } else {
                totalScore += frame.firstBall.rawValue
            }
        }
        
        return totalScore
    }
}

