//
//  ButtonsTutorialViewController.swift
//  UiKitTuto
//
//  Created by Dave Gomez on 2026-03-09.
//

import UIKit

class ButtonsTutorialViewController: UIViewController {
    
    private lazy var showNameButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Show name", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(onSHowNameButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private var nameLabel: UILabel = {
       let label = UILabel()
        label.text = "Hello World"
        label.isHidden = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(showNameButton)
        showNameButton.widthAnchor.constraint(equalToConstant: 350).isActive = true
        showNameButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        showNameButton.backgroundColor = .systemBlue
        showNameButton.layer.cornerRadius = 10
        showNameButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        showNameButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(nameLabel)
        nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: showNameButton.bottomAnchor, constant: 10).isActive = true
        
    }
    
    @objc private func onSHowNameButtonTapped() {
        nameLabel.isHidden.toggle()
        let title = nameLabel.isHidden ? "Show name" : "Hide name"
        showNameButton.setTitle(title, for: .normal)
    }
    
}


#Preview {
    ButtonsTutorialViewController()
}
