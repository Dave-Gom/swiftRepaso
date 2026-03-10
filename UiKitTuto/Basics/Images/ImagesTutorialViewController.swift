//
//  ImagesTutorialViewController.swift
//  UiKitTuto
//
//  Created by Dave Gomez on 2026-03-10.
//

import UIKit

class ImagesTutorialViewController: UIViewController {
    
    private var imageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
        imageView.image = UIImage(named: "paperplane")
        
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
    }
}


#Preview {
    ImagesTutorialViewController()
}
