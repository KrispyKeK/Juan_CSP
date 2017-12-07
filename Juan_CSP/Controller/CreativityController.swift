//
//  CreativityController.swift
//  Juan_CSP
//
//  Created by Dela Cruz, Juan on 10/26/17.
//  Copyright © 2017 Dela Cruz, Juan. All rights reserved.
//

import UIKit

public class CreativityController: UICollectionViewController, UICollectionViewDelegateFlowLayout{
    private let reuseIdentifier = "artIdentifier"
    private let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)
    private let itemsPerRow: CGFloat = 3
    private lazy var artSelection: [UIImage?] = {
        return[
            UIImage(named: "imageName"),
            UIImage(named: "imageName"),
            UIImage(named: "imageName"),
            UIImage(named: "imageName"),
            UIImage(named: "imageName"),
            UIImage(named: "imageName"),
            UIImage(named: "imageName"),
            UIImage(named: "imageName"),
            UIImage(named: "imageName"),
            UIImage(named: "imageName"),
            UIImage(named: "imageName")]
    }()
    var largePhotoIndexPath: IndexPath?{
        didSet{
            var indexPaths = [IndexPath]()
            if let largePhotoIndexPath = largePhotoIndexPath{
                indexPaths.append(largePhotoIndexPath)
                
            }
            if let oldValue = oldValue{
                indexPaths.append(oldValue)
            }
            collectionView?.performBatchUpdates({
                self.collectionView?.reloadItems(at: indexPaths)
            })
            {
                completed in
                if let largePhotoIndexPath = self.largePhotoIndexPath{
                    self.collectionView?.scrollToItem(at: largePhotoIndexPath,
                                                      at: .centeredVertically,
                                                      animated: true)
                }
            }
        }
    }
}
