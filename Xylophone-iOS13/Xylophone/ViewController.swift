//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(senderTitle: sender.currentTitle!)
        print("start")
        sender.alpha = 0.2
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.2) {
            sender.alpha = 1.0
            print("end")
        }
        
    }
    
    func playSound(senderTitle : String) {
        let url = Bundle.main.url(forResource: senderTitle, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
