//
//  ViewController.swift
//  CounterApp
//
//  Created by Ansh Kataria on 05/04/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    var count=0
    @IBAction func incrementTapped(_ sender: UIButton) {
        count = count+1
        counterLabel.text="\(count)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.text="\(count)"
    }
}

