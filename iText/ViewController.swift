//
//  ViewController.swift
//  iText
//
//  Created by Dagmawi Nadew-Assefa on 10/13/18.
//  Copyright © 2018 Sason. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Create view for VC to manage
    private let mainView = RootView()
    
    //Assign view to VC so it can be seen.
    override func loadView() {
        self.view = mainView
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.messageCollection.delegate = self
        mainView.messageCollection.dataSource = self
        mainView.messageCollection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "messageCell")
    }

}

extension ViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1000
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = mainView.messageCollection.dequeueReusableCell(withReuseIdentifier: "messageCell", for: indexPath)
        cell.backgroundColor = .yellow
        return cell
    }
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width, height: self.view.frame.height/6)
    }
    
    
}


