//
//  InstrumentsCollectionView.swift
//  Instrumentally
//
//  Created by C4Q on 6/1/18.
//  Copyright © 2018 ccruz. All rights reserved.
//

import UIKit

class InstrumentsCollectionView: UIView {

//   Create the collection view
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let cv = UICollectionView(frame: frame, collectionViewLayout: layout)
        cv.backgroundColor = UIColor(displayP3Red: 253/255, green: 124/255, blue: 110/255, alpha: 1)
        
//        Register CollectionViewCell
        cv.register(InstumentCollectionViewCell.self, forCellWithReuseIdentifier: "InstumentCollectionViewCell")
        return cv
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
        backgroundColor = .white
        setupViews()
    }

    private func setupViews() {
        addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
}
