//
//  ExampleView.swift
//  ORSwiftUtils_Example
//
//  Created by Oskar Rosolowski on 04/01/2021.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import ORSwiftUtils

final class ExampleView: UIView {
    private let imageView = UIImageView()
    
    convenience init() {
        self.init(frame: .zero)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        setUp()
    }
    
    @available(*, unavailable)
    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUp() {
        addSubview(imageView)
        
        imageView.image = UIImage(color: .red, size: CGSize(width: 70, height: 50))
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
        ])
    }
}
