//
//  TwitterCell.swift
//  PlaylistFeatureforMTTN
//
//  Created by Tushar Elangovan on 9/7/20.
//  Copyright © 2020 Tushar Elangovan. All rights reserved.
//

import Foundation
import UIKit

class TwitterCell: UICollectionViewCell{
    
    lazy var imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.layer.borderWidth = 1.5
        iv.layer.borderColor = UIColor.white.cgColor
        iv.layer.cornerRadius = 10
        iv.layer.masksToBounds = true
        iv.clipsToBounds = true
        return iv
    }()
    lazy var bb: UIView = {
        let c = UIView()
        c.backgroundColor = .white
        return c
    }()
    
    
    lazy var eventName: UILabel = {
        let label = UILabel()
       // label.font = UIFont.boldSystemFont(ofSize: 19)
        label.font = UIFont(name: "Avenir", size: 25)
        label.numberOfLines = 0
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupLayout()
    }
    let containerview = UIView()
    
    fileprivate func setupLayout(){
        addSubview(bb)
        let darkBlur = UIBlurEffect(style: UIBlurEffect.Style.dark)
        let blurView = UIVisualEffectView(effect: darkBlur)
        blurView.layer.cornerRadius = 10
               clipsToBounds = false
                     layer.shadowColor = UIColor.white.cgColor
                     layer.shadowOffset = CGSize(width: 0, height: 0)
                     layer.shadowOpacity = 0.5
                     layer.shadowRadius = 10
       addSubview(containerview)
       containerview.layer.cornerRadius = 15
       containerview.clipsToBounds = true
       containerview.translatesAutoresizingMaskIntoConstraints = false
       containerview.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
       containerview.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
       containerview.topAnchor.constraint(equalTo: topAnchor).isActive = true
       containerview.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
       containerview.addSubview(imageView)

        imageView.addSubview(blurView)
        imageView.addSubview(eventName)
        //_ = imageView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor)
        
        _ = imageView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
          blurView.anchor(top: imageView.topAnchor, left: imageView.leftAnchor, bottom: imageView.bottomAnchor, right: imageView.rightAnchor)
        _ = eventName.anchor(top: imageView.topAnchor, left: imageView.leftAnchor, bottom: imageView.bottomAnchor, right: imageView.rightAnchor, topConstant: 0, leftConstant: 12, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 0)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


