//
//  ViewController.swift
//  PlaylistFeatureforMTTN
//
//  Created by Tushar Elangovan on 9/7/20.
//  Copyright © 2020 Tushar Elangovan. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout{
    
    fileprivate let youtubeCellId = "youtubeCellId"
    fileprivate let instagramCellId = "instagramCellId"
    fileprivate let twittercellid = "twitterCellId"
    fileprivate let playlistsEventsCellid = "playlistsCellId"
    
    var counter: Int = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
//        }
    }
    
    fileprivate func setupCollectionView(){
//        refreshControl.addTarget(self, action: #selector(refreshSocial), for: UIControl.Event.valueChanged)
//        collectionView.refreshControl = refreshControl
        collectionView.showsVerticalScrollIndicator = false
        collectionView.register(YoutubeCollectionViewCell.self, forCellWithReuseIdentifier: youtubeCellId)
        collectionView.register(InstagramCollectionViewCell.self, forCellWithReuseIdentifier: instagramCellId)
        collectionView.register(TwitterCollectionViewCell.self, forCellWithReuseIdentifier: twittercellid)
        collectionView.register(PlaylitsCollectionViewCell.self, forCellWithReuseIdentifier: playlistsEventsCellid)
        
        collectionView.contentInset = UIEdgeInsets(top: 16, left: 0, bottom: 0, right: 0)
    }
    

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.item {
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: youtubeCellId, for: indexPath) as! YoutubeCollectionViewCell
            cell.socialViewController = self
            return cell
        case 0:
            let  cell = collectionView.dequeueReusableCell(withReuseIdentifier: twittercellid, for: indexPath) as! TwitterCollectionViewCell
            cell.socialViewController = self
            return cell
        case 2:
            let  cell = collectionView.dequeueReusableCell(withReuseIdentifier: instagramCellId, for: indexPath) as! InstagramCollectionViewCell
            cell.socialViewController = self
            return cell
        case 3:
            let  cell = collectionView.dequeueReusableCell(withReuseIdentifier: playlistsEventsCellid, for: indexPath) as! PlaylitsCollectionViewCell
            cell.socialViewController = self
            return cell
            

        default:
            return UICollectionViewCell()
        }
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch indexPath.item{
        case 0:
            return CGSize(width: view.frame.width, height: 250)
        case 1:
            return CGSize(width: view.frame.width, height: 305)
        case 2:
            return CGSize(width: view.frame.width, height: 180)
        case 3:
            return CGSize(width: view.frame.width, height: 250)
        default:
            return CGSize(width: view.frame.width, height: 200)
        }
    }
}


