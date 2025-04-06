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
        
    }
    
    @IBAction func decrementTapped(_ sender: UIButton) {
        count=count-1;
        
    }
    
    @IBAction func resetTapped(_ sender: UIButton) {
        count=0;
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        count = UserDefaults.standard.integer(forKey: "counterValue")
    }
}

