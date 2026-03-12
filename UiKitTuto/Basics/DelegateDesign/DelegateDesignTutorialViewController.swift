//
//  DelegateDesignTutorialViewController.swift
//  UiKitTuto
//
//  Created by Dave Gomez on 2026-03-11.
//

import UIKit

class DelegateDesignTutorialViewController: UIViewController {
    
    private var actionButtonView = ActionButtonView()
    
    private var textLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGroupedBackground
        view.addSubview(actionButtonView)
        actionButtonView.layer.cornerRadius = 10
        actionButtonView.layer.shadowColor = UIColor.black.cgColor
        actionButtonView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            actionButtonView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            actionButtonView.centerYAnchor.constraint(equalTo:  view.centerYAnchor),
            actionButtonView.heightAnchor.constraint(equalToConstant: 300),
            actionButtonView.widthAnchor.constraint(equalToConstant: 300)
            
        ])
        actionButtonView.delegate = self
        view.addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textLabel.topAnchor.constraint(equalTo: actionButtonView.bottomAnchor, constant: 16)
        ])
        
        textLabel.text = "Primary Action Button Tapped"
        textLabel.isHidden = true
    }
    

   
}

extension DelegateDesignTutorialViewController: ActionButtonViewDelegate {
    
    func onPrimaryTapped() {
        textLabel.isHidden = false
    }
    
    func onSecondaryTapped() {
        textLabel.isHidden = true
    }
}

#Preview {
    DelegateDesignTutorialViewController()
}
