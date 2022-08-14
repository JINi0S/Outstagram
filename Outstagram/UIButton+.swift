//
//  UIButton+.swift
//  Outstagram
//
//  Created by 이진희 on 2022/08/13.
//

import UIKit


extension UIButton {
    func setImage(systemName: String) {
        contentHorizontalAlignment = .fill
        contentVerticalAlignment = .fill
        
        imageView?.contentMode = .scaleAspectFit
        imageEdgeInsets = .zero
        
        setImage(UIImage(systemName: systemName), for:.normal)
    }
}
