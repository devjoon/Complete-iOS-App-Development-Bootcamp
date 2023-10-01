//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var timerBar: UIProgressView!
    
    let eggTimes = ["Soft":3,"Medium":7,"Hard":12]
    var timer: Timer?
    var fixTime = 0
    var second = 0
    func startTimer(second: Int) {
        timer?.invalidate()
        fixTime = second
        self.second = second
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(printToConsole), userInfo: nil, repeats: true)
    }
    
    @objc func printToConsole() {
        print("\(second) second.")
        second -= 1
        if second == 0 {
            timer?.invalidate()
            titleLabel.text = "Done!"
            playSound()
        }
        timerBar.progress = Float(Double(second)/Double(fixTime))
    }
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        guard let hardness = sender.currentTitle else {
            return
        }
        switch hardness {
        case "Soft":
            startTimer(second: eggTimes["Soft"]!)
        case "Medium":
            startTimer(second: eggTimes["Medium"]!)
        case "Hard":
            startTimer(second: eggTimes["Hard"]!)
        default:
            print("Error")
        }
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource:"alarm_sound", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}






