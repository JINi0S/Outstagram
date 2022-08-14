//
//  ProfileCollectionViewCell.swift
//  Outstagram
//
//  Created by 이진희 on 2022/08/14.
//

import SnapKit
import UIKit

final class ProfileCollectionViewCell: UICollectionViewCell {
    private let imageView = UIImageView()
    func setup(with image: UIImage) {
        addSubview(imageView)
        imageView.snp.makeConstraints {$0.edges.equalToSuperview()}
        
        imageView.backgroundColor = .tertiaryLabel
    }
}
