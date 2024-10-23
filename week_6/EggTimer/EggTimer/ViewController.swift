//
//  ViewController.swift
//  EggTimer
//
//  Created by Туругельдиев Нурсултан on 23.10.2024.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
    var timer: Timer?
    var totalTime = 0
    var secondsPassed = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var softBoiledEggImageView: UIImageView!
    @IBOutlet weak var mediumBoiledEggImageView: UIImageView!
    @IBOutlet weak var hardBoiledEggImageView: UIImageView!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBAction func softEggButtonPressed(_ sender: UIButton) {
        startTimer(eggType: "Soft")
        playAlarmSound()
    }

    @IBAction func mediumEggButtonPressed(_ sender: UIButton) {
        startTimer(eggType: "Medium")
    }

    @IBAction func hardEggButtonPressed(_ sender: UIButton) {
        startTimer(eggType: "Hard")
    }
    
    func startTimer(eggType: String) {
        timer?.invalidate()
        totalTime = eggTimes[eggType]! * 1
        secondsPassed = 0
        progressBar.progress = 0.0
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if secondsPassed < totalTime {
            secondsPassed += 1
            progressBar.progress = Float(secondsPassed) / Float(totalTime)
        } else {
            timer?.invalidate()
            playAlarmSound()
        }
    }

    
    func playAlarmSound() {
        if let soundURL = URL(string: "EggTimer/EggTimer/Assets.xcassets/A.wav") {
            var player: AVAudioPlayer?
            player = try? AVAudioPlayer(contentsOf: soundURL)
            player?.play()
        } else {
            print("Файл не найден: A.wav")
        }
    }

}

