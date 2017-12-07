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
    override public func viewDidLoad(){
        super.viewDidLoad()
    }
    override public func numberOfSections(in collectionView: UICollectionView) -> Int{
        return 1
    }
    override public func collectionView(_ colectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return artSelection.count
    }
    override public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let artCell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ArtCell
        artCell.backgroundColor = .purple
        artCell.imageView.image = artSelection[indexPath.row]
        artCell.labelView.text = "My Art"
        return artCell
    }
    public func collectionView(_ collectionView: UICollectionView,
                               layout collectionViewLayout: UICollectionViewLayout,
                               sizeForItemAt indexPath: IndexPath) -> CGSize{
        if indexPath == largePhotoIndexPath{
            let art = artSelection[indexPath.row]
            let size = collectionView.bounds.size
            let widthScale = (size.width / art!.size.width) * CGFloat(0.80)
            let largeSize = CGSize(width: art!.size.width * widthScale, height: art!.size.height * widthScale)
            return largeSize
        }
        let paddingSpace = sectionInsets.left * (itemsPerRow+1)
        let avaiableWidth = view.frame.width - paddingSpace
        let widthPerItem = avaiableWidth / itemsPerRow
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    public func collectionView(_ collectionView: UICollectionView,
                                layout collectionViewLayout: UICollectionViewLayout,
                                insetForSectionAt section: Int) -> UIEdgeInsets{
        return sectionInsets
    }
    public func collectionView(_ collectionView: UICollectionView,
                               layout collectionViewLayout: UICollectionViewLayout,
                               minimumLineSpacingForSecitonAt section: Int) -> CGFloat{
        return sectionInsets.left
    }
    override public func collectionView(_ collectionView: UICollectionView,
                                        shouldSelectItemAt indexPath: IndexPath) -> Bool{
        if largePhotoIndexPath == indexPath{
            largePhotoIndexPath = nil
        }
        else{
            largePhotoIndexPath = indexPath
        }
        return false
    }
}
