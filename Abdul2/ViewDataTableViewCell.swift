//
//  ViewDataTableViewCell.swift
//  Abdul2
//
//  Created by 123 on 13/03/18.
//  Copyright © 2018 123. All rights reserved.
//

import UIKit

class ViewDataTableViewCell: UITableViewCell {

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let codedLabel:UILabel = UILabel()
        codedLabel.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        codedLabel.textAlignment = .center
        codedLabel.text = "alertText"
        codedLabel.numberOfLines=1
        codedLabel.textColor=UIColor.red
        codedLabel.font=UIFont.systemFont(ofSize: 22)
        codedLabel.backgroundColor=UIColor.lightGray

            }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

           }

}
