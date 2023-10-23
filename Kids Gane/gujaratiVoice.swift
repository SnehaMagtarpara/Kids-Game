//
//  gujaratiVoice.swift
//  Kids Gane
//
//  Created by R93 on 05/07/23.
//

import UIKit
import AVFoundation

class gujaratiVoice: UIViewController {

    
    let speechSynthesizer = AVSpeechSynthesizer()
    let voice = AVSpeechSynthesisVoice(language: "gu-IN")

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func voiceButton(_ sender: Any) {
        let speechUtterance = AVSpeechUtterance(string:" goes here")
        speechUtterance.voice = voice
        speechSynthesizer.speak(speechUtterance)


        
    }
    
}
