//
//  ActionButtonView.swift
//  UiKitTuto
//
//  Created by Dave Gomez on 2026-03-11.
//

import UIKit

protocol ActionButtonViewDelegate: AnyObject {
    func onPrimaryTapped()
    func onSecondaryTapped()
}

class ActionButtonView: UIView {
    weak var delegate: ActionButtonViewDelegate?
    
    private var primaryActionButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Primary Action", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 10
        
        return button
    }()
    
    private var secondaryActionButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Secondary Action", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(primaryActionButton)
        addSubview(secondaryActionButton)
        
        backgroundColor = .systemBackground
        
        primaryActionButton.addTarget(self, action: #selector(primaryActionTapped), for: .touchUpInside)
        secondaryActionButton.addTarget(self, action: #selector(secondaryActionTapped), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            primaryActionButton.widthAnchor.constraint(equalToConstant: 200),
            primaryActionButton.heightAnchor.constraint(equalToConstant: 44),
            primaryActionButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            primaryActionButton.centerYAnchor.constraint(equalTo: centerYAnchor),
            secondaryActionButton.topAnchor.constraint(equalTo: primaryActionButton.bottomAnchor, constant: 16),
            secondaryActionButton.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])
        
        addSubview(secondaryActionButton)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func primaryActionTapped() {
        print("Primary Action Tapped")
        delegate?.onPrimaryTapped()
    }
    
    @objc func secondaryActionTapped() {
        print("Secondary Action Tapped")
        delegate?.onSecondaryTapped()
    }
}

#Preview {
    ActionButtonView()
}
