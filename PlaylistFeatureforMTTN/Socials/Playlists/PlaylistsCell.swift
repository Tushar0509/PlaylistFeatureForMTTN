//
//  PlaylistsCell.swift
//  PlaylistFeatureforMTTN
//
//  Created by Tushar Elangovan on 9/7/20.
//  Copyright © 2020 Tushar Elangovan. All rights reserved.
//

import Foundation
import UIKit

class PlaylitsCollectionViewCell: UICollectionViewCell, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    private let cellId = "cellID"
    weak var socialViewController: ViewController?
    var ctr = 0
    
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Playlists"
        label.font = UIFont.boldSystemFont(ofSize: 19)
        label.textColor = .white
        return label
    }()
    
    lazy var eventsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.delegate = self
        cv.dataSource = self
        cv.register(PlaylistMediaCell.self, forCellWithReuseIdentifier: cellId)
        return cv
    }()
    
    lazy var seperatorLineView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! PlaylistMediaCell
        
        switch indexPath.item {
        case 0:
            cell.imageView.image = UIImage(named: "AppleMusic")
           // cell.eventName.text = "Instagram"
        case 1:
            cell.imageView.image = UIImage(named: "Spotify")
         //   cell.eventName.text = "Twitter"
        case 2:
            cell.imageView.image = UIImage(named: "Youtube")
        //    cell.eventName.text = "Youtube"
        default:
            cell.imageView.image = UIImage(named: "logo")
        }
        //cell.imageView = UIImageView(image: UIImage(named: "logo"))
       // cell.eventName.text = "Twitter"
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: frame.width/3, height: frame.height - 44)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.item {
        case 0:
//            let vc = socialViewController
//            ctr = 1;//insta
//            vc?.counter = ctr
//            print(ctr)
//            print("Instagram")
//            vc?.collectionView.reloadData()
            print("Apple Music")
        case 1:
//            let vc = socialViewController
//            ctr = 2;//twitter
//            vc?.counter = ctr
//            print(ctr)
//            print("Twitter")
//            vc?.collectionView.reloadData()
            print("Spotify")
        case 2:
//            let vc = socialViewController
//            ctr = 3;//youtube
//            vc?.counter = ctr
//            print(ctr)
//            print("Yotube")
//            vc?.collectionView.reloadData()
            print("Youtube")
        default:
            ctr = 0;
            let vc = socialViewController
            vc?.counter = ctr
            print("Default")
            vc?.collectionView.reloadData()
        }
        print("Clicked ME")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        if #available(iOS 13.0, *) {
            self.eventsCollectionView.isScrollEnabled = false
            eventsCollectionView.backgroundColor = .black
            seperatorLineView.backgroundColor = .quaternaryLabel
        }
        setupLayout()
    }
    
    fileprivate func setupLayout(){
        addSubview(titleLabel)
        titleLabel.anchorWithConstants(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, topConstant: 0, leftConstant: 16, bottomConstant: 0, rightConstant: 16)
        addSubview(eventsCollectionView)
        eventsCollectionView.anchorWithConstants(top: titleLabel.bottomAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0)
        addSubview(seperatorLineView)
        _ = seperatorLineView.anchor(top: nil, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 16, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0.7)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
 
