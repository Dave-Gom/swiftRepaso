//
//  ViewController.swift
//  UiKitTuto
//
//  Created by Dave Gomez on 2026-03-09.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var primaryButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPurple
        greetingLabel.textAlignment = .center
    }
    
    func greetUser(_ name: String) {
        greetingLabel.text = "Hello \(name), I'm a View Controller!"
    }

    @IBAction func primaryButtonTapped(_ sender: UIButton) {
        greetUser("Dave")
        view.backgroundColor = .white
    }
}

