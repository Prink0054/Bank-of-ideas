//
//  ForgotViewController.swift
//  Abdul2
//
//  Created by 123 on 12/03/18.
//  Copyright © 2018 123. All rights reserved.
//

import UIKit

class ForgotViewController: BaseViewController {
    

    //MARK:- IBOUTLETS

    @IBOutlet weak var REGISTER: UIButton!
    @IBOutlet weak var EmailTextfield: UITextField!
   
    
    
    //MARK:- VIEWCYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUi()

            }

    
    
    //MARK:- PRIVATE FUNCTINOS
    func setUpUi()
    {
        self.navigationController?.navigationBar.isHidden = false
        setTitle(title: "FORGOT PASSWORD")
        REGISTER.setRadius()
        EmailTextfield.setRadius()
        
    }
    
    //MARK:- IBACTIONS
    @IBAction func RegisterButton(_ sender: Any) {
    }
    }

