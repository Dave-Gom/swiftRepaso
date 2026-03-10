//
//  LabelsTutorialViewController.swift
//  UiKitTuto
//
//  Created by Dave Gomez on 2026-03-09.
//

import UIKit

class LabelsTutorialViewController: UIViewController {
    private var textLabel = UILabel()
    private var subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "This is a subtitle"
        label.textColor = .gray
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = "Hello, world!"
        textLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(textLabel)
        textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(subtitleLabel)
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 15).isActive = true
        subtitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}


#Preview {
    LabelsTutorialViewController()
}
