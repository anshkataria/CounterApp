//
//  ViewController.swift
//  CounterApp
//
//  Created by Ansh Kataria on 05/04/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    var count=0{
        didSet{
            counterLabel.text="\(count)"
            UserDefaults.standard.set(count, forKey:"counterValue")
        }
    }
    
    @IBAction func incrementTapped(_ sender: UIButton) {
        count = count+1
        animateCountChange()
    }
    
    @IBAction func decrementTapped(_ sender: UIButton) {
        count=count-1;
        animateCountChange()
    }
    
    @IBAction func resetTapped(_ sender: UIButton) {
        count=0;
        animateCountChange()
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

