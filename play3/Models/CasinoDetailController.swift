//
//  CasinoDetailController.swift
//  play3
//
//  Created by Shaun Tucker on 2/24/18.
//  Copyright © 2018 Shaun Tucker. All rights reserved.
//

import Foundation
import UIKit

class CasinoDetailController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var app: App? {
        didSet {
            navigationItem.title = app?.name
        }
    }
    
    private let headerId = "headerId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.alwaysBounceVertical = true
        
        collectionView?.backgroundColor = UIColor.white
        
        collectionView?.register(CasinoDetailHeader.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerId)
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath) as! CasinoDetailHeader
        
        header.app = app
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 170)
    }
}

class CasinoDetailHeader: BaseCell {
    
    var app: App? {
        didSet {
            
            if let imageName = app?.imageName {
                imageView.image = UIImage(named: imageName)
                
            }
        }
    }
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.layer.cornerRadius = 16
        iv.layer.masksToBounds = true
        return iv
        
    }()
    
    let segmentedControl: UISegmentedControl = {
        let sc = UISegmentedControl(items: ["Dine", "Shop", "Play"])
        return sc
    }()
    
    
    
    override func setupViews() {
        super.setupViews()
        
    
        addSubview(imageView)
        addSubview(segmentedControl)
        
        addConstraintWithFormat(format: "H:|-14-[v0(100)]", views: imageView)
        addConstraintWithFormat(format: "V:|-14-[v0(100)]", views: imageView)
        
        addConstraintWithFormat(format: "H:|-40-[v0]-40-|", views: segmentedControl)
        addConstraintWithFormat(format: "V:[v0(34)]-8-|", views: segmentedControl)
        
        
    }
}

extension UIView {
    
    func addConstraintWithFormat(format: String, views: UIView...) {
        
        var viewsDictionary = [String: UIView]()
        
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            viewsDictionary[key] = view
            view.translatesAutoresizingMaskIntoConstraints = false
            
        }
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format , options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))
    }
}

class BaseCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        
    }
}









