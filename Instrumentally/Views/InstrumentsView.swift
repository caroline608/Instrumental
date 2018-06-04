//
//  InstrumentsView.swift
//  Instrumentally
//
//  Created by C4Q on 6/1/18.
//  Copyright © 2018 ccruz. All rights reserved.
//

import UIKit

class InstrumentsView: UIView {
    
    var collectionView = InstrumentsCollectionView()

    lazy var letsPlayLabel: UILabel = {
        let label = UILabel()
        label.text = "Let's Listen to Music"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight(rawValue: 20))
        label.backgroundColor = .cyan
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
//        backgroundColor = .cyan
        setupViews()
    }
    
    private func setupBlurEffectView() {
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.light)
        let visualEffect = UIVisualEffectView(frame: UIScreen.main.bounds)
        visualEffect.effect = blurEffect
        addSubview(visualEffect)
    }
    
    private func setupViews() {
        setupBlurEffectView()
        
        addSubview(letsPlayLabel)
        letsPlayLabel.translatesAutoresizingMaskIntoConstraints = false
        letsPlayLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        letsPlayLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor).isActive = true
        letsPlayLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
        letsPlayLabel.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.15).isActive = true
        
        
        addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.topAnchor.constraint(equalTo: letsPlayLabel.bottomAnchor).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }

}
