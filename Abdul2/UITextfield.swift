//
//  UITextfield.swift
//  Abdul2
//
//  Created by 123 on 09/03/18.
//  Copyright © 2018 123. All rights reserved.
//

import Foundation
import UIKit

extension UITextField
{
    
    func setRadius()   {
        
        
        //Set border and corner radius of textfield
        self.layer.cornerRadius = self.frame.height/2
        self.layer.borderWidth = 1
        self.layer.borderColor =  #colorLiteral(red: 0.9254091382, green: 0.9255421162, blue: 0.9253799319, alpha: 1).cgColor
       //  self.layer.borderColor = UIColor.white.cgColor
       
        //Padding to textfield
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width:  23, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
        
//        self.attributedPlaceholder = NSAttributedString(string:placeholder,attributes: [NSForegroundColorAttributeName: UIColor.white])
    }
    
    func setRadius1()
    {
        //Set border and corner radius of textfield
        self.layer.cornerRadius = self.frame.height/2
        self.layer.borderWidth = 1
         self.layer.borderColor =  #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1).cgColor
    //    self.layer.borderColor = UIColor.white.cgColor
        
        //Padding to textfield
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width:  23, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
//        
//        self.attributedPlaceholder = NSAttributedString(string:placeholder!,
//                                                        attributes: [NSForegroundColorAttributeName: UIColor.white])
    }
    
    func setPlaceholder()  {
        let yourTextFieldName = UITextField(frame: CGRect(x: 0, y: 0, width: 180, height: 21))
        yourTextFieldName.attributedPlaceholder = NSAttributedString(string: "placeholder text", attributes: [NSForegroundColorAttributeName: UIColor.white])
    }
    
}
