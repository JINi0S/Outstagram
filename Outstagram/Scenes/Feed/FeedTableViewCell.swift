//
//  FeedTableViewCell.swift
//  Outstagram
//
//  Created by 이진희 on 2022/08/13.
//

import UIKit
import SnapKit


final class FeedTableViewCell: UITableViewCell {
 
    private lazy var postImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .tertiaryLabel
        
        return imageView
    }()
    
    private lazy var likeButton: UIButton = {
        let button = UIButton()
        button.setImage(systemName: "heart")
        
        return button
    }()

    private lazy var commentButton: UIButton = {
        let button = UIButton()
        button.setImage(systemName: "message")

        return button
    }()
    
    private lazy var directMessageButton: UIButton = {
        let button = UIButton()
        button.setImage(systemName: "paperplane")

        return button
    }()
    
    private lazy var bookmarkButton: UIButton = {
        let button = UIButton()
        button.setImage(systemName: "bookmark")

        return button
    }()
    
    private lazy var currentLikedCountLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label

        label.font = .systemFont(ofSize: 13, weight: .semibold)
        label.text = "홍길동님 외 43 명이 좋아합니다"
   
        return label
}()

    private lazy var contentsLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label

        label.font = .systemFont(ofSize: 13, weight: .medium)
        label.numberOfLines = 5
        label.text = "rkskekfkkekskakfdkjfskljfmsc;sdjfksgslkmsdkljf"
        return label
    }()
    
    private lazy var dateLabel: UILabel = {
        let label = UILabel()
        label.textColor = .secondaryLabel

        label.font = .systemFont(ofSize: 11, weight: .medium)
        label.text = "1일전"
        return label
    }()
    
    func setup() {
        [
            postImageView, likeButton,
            commentButton,
            directMessageButton,
            bookmarkButton,
            currentLikedCountLabel,
            contentsLabel,
            dateLabel
        ].forEach { addSubview($0) }
        
        postImageView.snp.makeConstraints {
            $0.leading.trailing.top.equalToSuperview()
            $0.height.equalTo(postImageView.snp.width)
        }
        let buttonWidth: CGFloat = 24.0
        let buttonInset: CGFloat = 16.0
        
        likeButton.snp.makeConstraints{
            $0.leading.equalToSuperview().inset(buttonInset)
            $0.top.equalTo(postImageView.snp.bottom).offset(buttonInset)
            $0.width.height.equalTo(buttonWidth)
        }
        
        let buttonSpacing: CGFloat = 12.0
    
        commentButton.snp.makeConstraints {
            $0.leading.equalTo(likeButton.snp.trailing).offset(buttonSpacing)
            $0.top.equalTo(likeButton.snp.top)
            $0.width.height.equalTo(buttonWidth)
        }
        
        directMessageButton.snp.makeConstraints {
            $0.leading.equalTo(commentButton.snp.trailing).offset(buttonSpacing)
            $0.top.equalTo(likeButton.snp.top)
            $0.width.height.equalTo(buttonWidth)

        }
        bookmarkButton.snp.makeConstraints {
            $0.trailing.equalToSuperview().inset(buttonWidth)
            $0.top.equalTo(likeButton.snp.top)
            $0.width.height.equalTo(buttonWidth)
        }
        
        currentLikedCountLabel.snp.makeConstraints {
            $0.leading.equalTo(likeButton.snp.leading)
            $0.trailing.equalTo(bookmarkButton.snp.trailing)
            $0.top.equalTo(likeButton.snp.bottom).offset(14)
        }
        let labelVerticalSpacing: CGFloat = 8.0
        contentsLabel.snp.makeConstraints {
            $0.leading.equalTo(likeButton.snp.leading)
            $0.trailing.equalTo(bookmarkButton.snp.trailing)
            $0.top.equalTo(currentLikedCountLabel.snp.bottom).offset(labelVerticalSpacing)
        }
        
        dateLabel.snp.makeConstraints {
            $0.leading.equalTo(likeButton.snp.leading)
            $0.trailing.equalTo(bookmarkButton.snp.trailing)
            $0.top.equalTo(contentsLabel.snp.bottom).offset(labelVerticalSpacing)
            $0.bottom.equalToSuperview().inset(16)
        }
    }
    
}
