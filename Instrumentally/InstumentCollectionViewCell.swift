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
        return iv
    }()
    
}
