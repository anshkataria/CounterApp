//
//  ViewController.swift
//  CounterApp
//
//  Created by Ansh Kataria on 05/04/25.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    var count=0{
        didSet{
            counterLabel.text="\(count)"
            UserDefaults.standard.set(count, forKey:"counterValue")
        }
    }
    
    var audioPlayer: AVAudioPlayer?
    func playSound(){
        if let path = Bundle.main.path(forResource: "click", ofType: "wav"){
            let url = URL(fileURLWithPath: path)
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            }
            catch {
                print("Couldn't load sound file.")
            }
        }
    }
    
    @IBAction func incrementTapped(_ sender: UIButton) {
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.impactOccurred()
        
        count = count+1
        animateCountChange()
        playSound()
        
    }
    
    @IBAction func decrementTapped(_ sender: UIButton) {
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.impactOccurred()
        
        count=count-1;
        animateCountChange()
        playSound()
       
    }
    
    @IBAction func resetTapped(_ sender: UIButton) {
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.impactOccurred()
        
        count=0;
        animateCountChange()
        playSound()
    }
    func animateCountChange(){
        UIView.animate(withDuration: 0.15, animations: {self.counterLabel.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        })
        { _ in
            UIView.animate(withDuration: 0.15){
                self.counterLabel.transform = CGAffineTransform.identity
            }
            }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        count = UserDefaults.standard.integer(forKey: "counterValue")
    }
}

