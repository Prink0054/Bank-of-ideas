//
//  SavaDataTableViewCell.swift
//  Abdul2
//
//  Created by 123 on 13/03/18.
//  Copyright © 2018 123. All rights reserved.
//

import UIKit

class SavaDataTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var OldPasswordLabel: UILabel!
    
    @IBOutlet weak var OldpasswordTextfield: UITextField!
    
    @IBOutlet weak var downarrowimagevw: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    setUpUi()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setUpUi() {
        OldpasswordTextfield.setRadius1()
       
    }
    
    
    
}
