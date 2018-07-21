//
//  DataListingViewController.swift
//  Abdul2
//
//  Created by 123 on 13/03/18.
//  Copyright © 2018 123. All rights reserved.
//

import UIKit

class DataListingViewController: BaseViewController {

    //MARK:- IBOUTLETS
    @IBOutlet weak var maintableview: UITableView!
    
    //MARK:- VARIABLE
    var popover = Popover()
    var myTableView = UITableView()
    let name = ["Richard bainely" , "Alex smith" , "Mark Henry"]
    let email = ["ghacj@gmail.com" , "acj@gmail.com" , "hacj@gmail.com"]
    let data = ["CHANGE PASSWORD" , "LOGOUT"]
    let imag = [#imageLiteral(resourceName: "image") , #imageLiteral(resourceName: "image") ]
    
    
    //MARK:- VIEWCYCLE
    override func viewDidLoad() {
    super.viewDidLoad()
       
        setUpUi()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.setTitle(title: "DATA LISTING")
    }
    
        //MARK:- PRIVATE FUNCTINOS    
    func setUpUi()
    {
        
        self.setTitle(title: "DATA LISTING")
        self.navigationController?.navigationBar.isHidden = false
        setBackButton()
        setSkipButton()
        self.maintableview.separatorStyle = UITableViewCellSeparatorStyle.none
        
        
    }

        //MARK:- IBACTIONS
    override func backButtonAction() {
        
    
        let startPoint = CGPoint(x: 25, y: 65)
        let aView = UIView(frame: CGRect(x: 0, y: 0,  width: 220, height: 80))
        aView.clipsToBounds = true
        myTableView = UITableView(frame: CGRect(x: 5, y: 5,  width: 210, height: 70))
        myTableView.register(TableCell.self, forCellReuseIdentifier: "cell")
        myTableView.dataSource = self
        myTableView.delegate = self
        myTableView.tag = 100
        myTableView.clipsToBounds = true
          myTableView.isScrollEnabled = false
        
        aView.addSubview(myTableView)
        
        popover.show(aView, point: startPoint)

    }
    
    override func skipButtonAction() {
        navigateToViewController(storyboardName: "Main", viewID: "SaveDataViewController")
    }
    
}

    //MARK:- EXTENSIONS
    extension DataListingViewController : UITableViewDataSource , UITableViewDelegate
    {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        
    {
        if tableView.tag == 100 {
            return data.count
        }
        else
        {
        return name.count
        }
    }
    
    @available(iOS 2.0, *)
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        if tableView.tag == 100 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableCell
            cell?.selectionStyle = .none
            cell?.textLabel?.text = data[indexPath.row]
             cell?.textLabel?.font = UIFont(name: (cell?.textLabel?.font.fontName)!, size:13)
            cell?.imageView?.image = imag[indexPath.row]
            //cell.textLabel?.font = UIFont(name: "Montserrat-Regular", size: 1)
            return cell!
        }
       else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? DataListingTableViewCell
            cell?.Namelabel.text = name[indexPath.row]
            return cell!
        }
        
        
    
        }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView.tag == 100 {
            return 30.0
        }
       return 100
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 15
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIView()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if tableView.tag == 100
        {
            
            if   indexPath.row == 0
            {
                navigateToViewController(storyboardName: "Main", viewID: "ChangePasswordViewController")
                
                popover.dismiss()
                
            }
            else
            {
                
                
                popover.dismiss()
                
            }
            
        }
            
        else{
            

            navigateToViewController(storyboardName: "Main", viewID: "ViewDataViewController")
            
        }

        
        
    }
}
