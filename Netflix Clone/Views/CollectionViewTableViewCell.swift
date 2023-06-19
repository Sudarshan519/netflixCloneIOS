//
//  CollectionViewTableViewCell.swift
//  Netflix Clone
//
//  Created by user on 2023/06/19.
//

import UIKit

class CollectionViewTableViewCell: UITableViewCell {
    static let identifier="CollectionViewTableViewCell"
     
    
    override init(style:UITableViewCell.CellStyle,reuseIdentifier:String?){
        super.init(style:style,reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor  = .systemPink
    }
    required init?(coder: NSCoder){
        fatalError()
    }
     
}

 
