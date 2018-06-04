//
//  ViewController.swift
//  Instrumentally
//
//  Created by C4Q on 5/30/18.
//  Copyright © 2018 ccruz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var instrumentView = InstrumentsView()
    
   
    private let cellSpacing: CGFloat = 5.0
    
    private var instrumentsCollectionArray = [#imageLiteral(resourceName: "piano"),#imageLiteral(resourceName: "electric-guitar"),#imageLiteral(resourceName: "drum"),#imageLiteral(resourceName: "maracas"),#imageLiteral(resourceName: "Trumpet"),#imageLiteral(resourceName: "Acoustic-Guitar")]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(instrumentView)
        instrumentView.collectionView.collectionView.delegate = self
        instrumentView.collectionView.collectionView.dataSource = self

    }

   

}

extension ViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print("The Collection View for IndexPath: \(indexPath.row) should pop up now")
        
        // identify a specific collection
        let aSpecificCollection = instrumentsCollectionArray[indexPath.row]
    }
    
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return instrumentsCollectionArray.count
        //return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "InstumentCollectionViewCell", for: indexPath) as! InstumentCollectionViewCell
        
        let aCollection = instrumentsCollectionArray[indexPath.row]
        
        return cell
    }
    
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let numCells: CGFloat = 2
        let numSpaces: CGFloat = numCells + 1
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        
        return CGSize(width: (screenWidth - (cellSpacing * numSpaces)) / numCells, height: screenHeight * 0.40)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: cellSpacing, left: cellSpacing, bottom: 0, right: cellSpacing)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return cellSpacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return cellSpacing
    }
    
}
