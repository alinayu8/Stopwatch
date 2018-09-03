//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by Alina Yu on 9/3/18.
//  Copyright © 2018 Alina Yu. All rights reserved.
//

import Foundation

class Stopwatch {

    private var startTime: NSDate?
    var isRunning: Bool = false
    
    func start() {
        isRunning = true
        startTime = NSDate()
    }
    
    func stop() {
        isRunning = false
        startTime = nil
    }
    
    var elapsedTime: TimeInterval {
        if let startTime = self.startTime {
            return -1 * startTime.timeIntervalSinceNow // could also just say -startTime.timeIntervalSinceNow
        } else {
            return 0
        }
    }
    
    var elapsedTimeAsString: String {
        let minutes = Int(elapsedTime / 60)
        let seconds = Int(elapsedTime.truncatingRemainder(dividingBy:60))
        let milliseconds = Int(elapsedTime.truncatingRemainder(dividingBy: 1) * 100) / 10
        return String(format: "%02d:%02d.%01d", minutes, seconds, milliseconds)
    }
}
