//
//  RootView.swift
//  iText
//
//  Created by Dagmawi Nadew-Assefa on 10/13/18.
//  Copyright © 2018 Sason. All rights reserved.
//

import UIKit

class RootView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let messageCollection: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .blue
        return collectionView
    }()
    
    
    private func setupView(){
        self.backgroundColor = .red
        addSubview(messageCollection)
        
        messageCollection.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        messageCollection.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        messageCollection.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        messageCollection.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
    }

}
