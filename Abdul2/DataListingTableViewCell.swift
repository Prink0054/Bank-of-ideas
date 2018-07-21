//
//  DataListingTableViewCell.swift
//  Abdul2
//
//  Created by 123 on 13/03/18.
//  Copyright © 2018 123. All rights reserved.
//

import UIKit

class DataListingTableViewCell: UITableViewCell {
    @IBOutlet weak var Uiview: UIView!

    @IBOutlet weak var Namelabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
       Uiview.dropShadow(color: .gray, opacity: 10, offSet: CGSize(width: 3, height: 3), radius: 4, scale: true)
        Uiview.layer.cornerRadius = 5;
       // Uiview.layer.masksToBounds = true;

      
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

   
}

extension UIView
{
    func dropShadow(color: UIColor, opacity: Float = 0.5, offSet: CGSize, radius: CGFloat = 1, scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = offSet
        layer.shadowRadius = radius
        
        layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
}

    

