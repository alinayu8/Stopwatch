//
//  ViewController.swift
//  Stopwatch
//
//  Created by Alina Yu on 9/3/18.
//  Copyright © 2018 Alina Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let stopwatch = Stopwatch()
    
    @IBOutlet weak var elapsedTimeLabel: UILabel!
    
    @objc func updateElapsedTimeLabel(timer: Timer) {
        if stopwatch.isRunning {
            elapsedTimeLabel.text = stopwatch.elapsedTimeAsString
        } else {
            timer.invalidate()
        }
    }
    
    @IBAction func startButtonTapped(sender: UIButton) {
        // code to start the clock
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.updateElapsedTimeLabel), userInfo: nil, repeats: true)
        stopwatch.start()
    }
    
    @IBAction func stopButtonTapped(sender: UIButton) {
        // code to stop the clock
        stopwatch.stop()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

