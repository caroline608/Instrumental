//
//  ViewController.swift
//  Instrumentally
//
//  Created by C4Q on 5/30/18.
//  Copyright © 2018 ccruz. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    var instrumentView = InstrumentsView()
    
//    creating an instance of AVAudioPlayer using AVFoundation Framework
    var audioPlayer: AVAudioPlayer!
    
    private let cellSpacing: CGFloat = 10.0
    
    private var instruments: [Instrument] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(instrumentView)
        instrumentView.collectionView.collectionView.delegate = self
        instrumentView.collectionView.collectionView.dataSource = self
        loadInstruments()
        
        let url = Bundle.main.url(forResource: "Piano", withExtension: "m4a")
        
        
    }
    
    func loadInstruments() {
        instruments = InstrumentData.intruments
    }

   

}

extension ViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print("The Collection View for IndexPath: \(indexPath.row) should pop up now")
        var layout = UICollectionViewLayout()
       
        // identify a specific collection
        let aCollection = instruments[indexPath.row]
        var cell = collectionView.cellForItem(at: indexPath)
        
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: aCollection.audioFile!)
            audioPlayer.prepareToPlay()
        } catch let error as NSError {
            print(error.debugDescription)
        }
        
//        play music
        audioPlayer.play()
        
        
//        var isHighlighted: Bool{
//            didSet{
//                if isHighlighted{
//                    UIView.animate(withDuration: 0.2, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 1.0, options: .curveEaseOut, animations: {
//                        self.transform = self.transform.scaledBy(x: 0.75, y: 0.75)
//                    }, completion: nil)
//                }else{
//                    UIView.animate(withDuration: 0.2, delay: 0.0, usingSpringWithDamping: 0.4, initialSpringVelocity: 1.0, options: .curveEaseOut, animations: {
//                        self.transform = CGAffineTransform.identity.scaledBy(x: 1.0, y: 1.0)
//                    }, completion: nil)
//                }
//            }
//        }
        
//        let translate = CGAffineTransform(translationX: 50, y: 50)
//        let scale = CGAffineTransform(scaleX: 4, y: 4)
//        UIView.animate(withDuration: 2.0, animations: {
//            cell?.transform = translate.concatenating(scale)
//        }) { (done) in
//            cell?.transform = CGAffineTransform.identity
//        }
    
        
    }
    
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return instruments.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "InstumentCollectionViewCell", for: indexPath) as! InstumentCollectionViewCell
        
        let aCollection = instruments[indexPath.row]
        cell.imageView.image = UIImage(named: aCollection.image)
        
        cell.layer.cornerRadius = 20.0
        cell.layer.masksToBounds = true
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
        return UIEdgeInsets(top: cellSpacing, left: cellSpacing, bottom: 10, right: cellSpacing)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 15.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return cellSpacing
    }
    
}
