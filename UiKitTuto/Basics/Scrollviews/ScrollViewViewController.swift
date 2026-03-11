//
//  ScrollViewViewController.swift
//  UiKitTuto
//
//  Created by Dave Gomez on 2026-03-10.
//

import UIKit

class ScrollViewViewController: UIViewController {
    private var scrollView = UIScrollView()
    
    private var stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 16
        return stack
    }()

    private let rectHeight = CGFloat(200)
    private let numberOfRects: Int = 20

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 1 ..< numberOfRects {
            let rect = createRectangle()
            stackView.addArrangedSubview(rect)
        }
        
        scrollView.delegate = self
        
        view.addSubview(scrollView)
        scrollView.addSubview(stackView)
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            // ScrollView ocupa toda la pantalla
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            // StackView: centrado, ancho fijo, anclado top/bottom para el scroll
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            stackView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
        ])
    }
    
    private func createRectangle() -> UIView {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: 200).isActive = true
        view.widthAnchor.constraint(equalToConstant: 200).isActive = true
        view.layer.cornerRadius = 16
        view.backgroundColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }

}

extension ScrollViewViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print("[DEBUG]: ScrollView did end decelerating...")
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        print("[DEBUG]: ScrollView did end dragging...")
    }
}


#Preview {
    ScrollViewViewController()
}
