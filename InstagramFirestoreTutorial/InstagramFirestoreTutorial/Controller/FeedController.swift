//
//  FeedController.swift
//  InstagramFirestoreTutorial
//
//  Created by 배소린 on 2022/03/09.
//

import UIKit

private let reuseIdentifier = "Cell"

class FeedController: UICollectionViewController {
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        collectionView.backgroundColor = .white
        
        collectionView.register(FeedCell.self, forCellWithReuseIdentifier: String(describing: FeedCell.self))
    
    }
}

// MARK: - UICollectionViewDataSource

extension FeedController {
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: FeedCell.self), for: indexPath) as? FeedCell else {
            return UICollectionViewCell()
        }
        cell.backgroundColor = .red
        return cell
    }
    
}

extension FeedController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 200)
    }
}
