//
//  TableViewCell.swift
//  ExpandableCell
//
//  Created by Jack Ngai on 5/30/17.
//  Copyright © 2017 Jack Ngai. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    let label = UILabel()
    let myImageView = UIImageView()
    
    var imgHeightConstraint = NSLayoutConstraint()
    
    var isExpanded = false
    {
        didSet{
            if !isExpanded {
                self.imgHeightConstraint.constant = 0.0
            } else {
                self.imgHeightConstraint.constant = 128.0
            }
        }
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
        
    }
        
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    func setupViews(){
        
        addSubview(label)
        addSubview(myImageView)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        myImageView.translatesAutoresizingMaskIntoConstraints = false
        
        myImageView.backgroundColor = .green
        
        
        label.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        label.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        
        myImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        myImageView.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 5).isActive = true
        
        
    }

}
