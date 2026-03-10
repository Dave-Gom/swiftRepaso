//
//  TextFieldTutoViewController.swift
//  UiKitTuto
//
//  Created by Dave Gomez on 2026-03-10.
//

import UIKit

class TextFieldTutoViewController: UIViewController {
    private lazy var textField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Enter text"
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.keyboardType = .emailAddress
        tf.borderStyle = .roundedRect
        tf.delegate = self
        return tf
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(textField)
        
        textField.addTarget(self, action: #selector(onEditingChanged), for: .editingChanged)
        textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textField.widthAnchor.constraint(equalToConstant: view.frame.width - 64).isActive = true
        textField.translatesAutoresizingMaskIntoConstraints = false
    }
    
    @objc func onEditingChanged(_ sender: UITextField) {
        print("[DEBUG]: TextField changed \(sender.text ?? "nil")\n")
    }
    
}

extension TextFieldTutoViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("[DEBUG]: ButtonPessed")
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("[DEBUG]: Started editing")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("[DEBUG]: Finished editing")
    }
}

#Preview {
    TextFieldTutoViewController()
}
