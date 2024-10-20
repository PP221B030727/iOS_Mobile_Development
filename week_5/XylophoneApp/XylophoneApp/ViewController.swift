//
//  ViewController.swift
//  XylophoneApp
//
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    var audioPlayer: AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var ButtonA: UIButton!
    @IBOutlet weak var ButtonB: UIButton!
    @IBOutlet weak var ButtonC: UIButton!
    @IBOutlet weak var ButtonD: UIButton!
    @IBOutlet weak var ButtonE: UIButton!
    @IBOutlet weak var ButtonF: UIButton!
    @IBOutlet weak var ButtonG: UIButton!
    
    @IBAction func SoundA(_ sender: UIButton) {
        if let soundURL = URL(string: "XylophoneApp/XylophoneApp/Assets.xcassets/A.wav") {
            audioPlayer = try? AVAudioPlayer(contentsOf: soundURL)
            audioPlayer?.play()
        }
    }
    @IBAction func SoundB(_ sender: UIButton) {
        if let soundURL = URL(string: "XylophoneApp/XylophoneApp/Assets.xcassets/B.wav") {
            audioPlayer = try? AVAudioPlayer(contentsOf: soundURL)
            audioPlayer?.play()
        }
    }
    @IBAction func SoundC(_ sender: UIButton) {
        if let soundURL = URL(string: "XylophoneApp/XylophoneApp/Assets.xcassets/C.wav") {
            audioPlayer = try? AVAudioPlayer(contentsOf: soundURL)
            audioPlayer?.play()
        }
    }
    @IBAction func SoundD(_ sender: UIButton) {
        if let soundURL = URL(string: "XylophoneApp/XylophoneApp/Assets.xcassets/D.wav") {
            audioPlayer = try? AVAudioPlayer(contentsOf: soundURL)
            audioPlayer?.play()
        }
    }
    @IBAction func SoundE(_ sender: UIButton) {
        if let soundURL = URL(string: "XylophoneApp/XylophoneApp/Assets.xcassets/E.wav") {
            audioPlayer = try? AVAudioPlayer(contentsOf: soundURL)
            audioPlayer?.play()
        }
    }
    @IBAction func SoundF(_ sender: UIButton) {
        if let soundURL = URL(string: "XylophoneApp/XylophoneApp/Assets.xcassets/F.wav") {
            audioPlayer = try? AVAudioPlayer(contentsOf: soundURL)
            audioPlayer?.play()
        }
    }
    @IBAction func SoundG(_ sender: UIButton) {
        if let soundURL = URL(string: "XylophoneApp/XylophoneApp/Assets.xcassets/G.wav") {
            audioPlayer = try? AVAudioPlayer(contentsOf: soundURL)
            audioPlayer?.play()
        }
    }
}

