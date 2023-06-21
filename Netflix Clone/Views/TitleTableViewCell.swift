//
//  TitleTableViewCell.swift
//  Netflix Clone
//
//  Created by user on 2023/06/20.
//

import UIKit

class TitleTableViewCell: UITableViewCell {

    static let identifier = "TitleTableViewCell"
    
    private let playTitleButton: UIButton = {
         let button = UIButton()
         let image = UIImage(systemName: "play.circle", withConfiguration: UIImage.SymbolConfiguration(pointSize: 30))
         button.setImage(image, for: .normal)
         button.translatesAutoresizingMaskIntoConstraints = false
         button.tintColor = .gray
         return button
     }()
     
    private let titleLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private let titlePoosterUIImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
        
    }()
    override init (style: UITableViewCell.CellStyle, reuseIdentifier:String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(titlePoosterUIImageView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(playTitleButton)
        applyConstraints()
    }
    private func applyConstraints(){
        let titlePosterUIImageViewConstraints = [
            titlePoosterUIImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            titlePoosterUIImageView.topAnchor.constraint(equalTo: contentView.topAnchor,constant:16),
            titlePoosterUIImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,constant: -15),
            titlePoosterUIImageView.widthAnchor.constraint(equalToConstant: 100)
            
            
        ]
        let titleLabelConstraints=[
            titleLabel.leadingAnchor.constraint(equalTo: titlePoosterUIImageView.trailingAnchor,constant: 20),
            titleLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
            
        ]
        
        let playTitleButtonConstraints = [
                    playTitleButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
                    playTitleButton.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
                ]
        
        NSLayoutConstraint.activate(titlePosterUIImageViewConstraints)
        NSLayoutConstraint.activate(titleLabelConstraints)
        NSLayoutConstraint.activate(playTitleButtonConstraints)
    }
    
    public func configure(with model: TitleViewModel){
//        guard let url = URL(string: model.posterURL) else {return}
        guard let url = URL(string:"https://image.tmdb.org/t/p/w500/\( model.posterURL)") else {return}
        titlePoosterUIImageView.sd_setImage(with:url, completed:nil)
        titleLabel.text = model.titleName
    }
    
    required init?(coder: NSCoder){
        fatalError()
    }

}
