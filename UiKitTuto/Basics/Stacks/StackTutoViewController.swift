//
//  StackTutoViewController.swift
//  UiKitTuto
//
//  Created by Dave Gomez on 2026-03-10.
//

import UIKit

class StackTutoViewController: UIViewController {
    
    private var stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 16
        return stack
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rect1 = createRectangle()
        rect1.backgroundColor = .purple
        
        let rect2 = createRectangle()
        rect2.backgroundColor = .systemBlue
        
        let rect3 = createRectangle()
        rect3.backgroundColor = .systemRed
        
        stackView.addArrangedSubview(rect1)
        stackView.addArrangedSubview(rect2)
        stackView.addArrangedSubview(rect3)
        
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    private func createRectangle() -> UIView {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: 200).isActive = true
        view.widthAnchor.constraint(equalToConstant: 200).isActive = true
        view.layer.cornerRadius = 16
        return view
    }
}

#Preview {
    StackTutoViewController()
}
