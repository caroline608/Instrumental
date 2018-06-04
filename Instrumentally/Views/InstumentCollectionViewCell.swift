//
//  InstumentCollectionViewCell.swift
//  Instrumentally
//
//  Created by C4Q on 6/1/18.
//  Copyright © 2018 ccruz. All rights reserved.
//

import UIKit

class InstumentCollectionViewCell: UICollectionViewCell {
   
    lazy var imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.layer.masksToBounds = true
        iv.backgroundColor = .white
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.cornerRadius = 20
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        setupViews()
    }
    
    private func setupViews() {
        addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        imageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        imageView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.40).isActive = true
    }
    
}
