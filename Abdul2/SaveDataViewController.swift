//
//  SaveDataViewController.swift
//  Abdul2
//
//  Created by 123 on 13/03/18.
//  Copyright © 2018 123. All rights reserved.
//

import UIKit

class SaveDataViewController: BaseViewController {
    
    //MARK:- IBOUTLETS
    @IBOutlet weak var MainTableviewcell: UITableView!
    @IBOutlet weak var Savedatabutton: UIButton!
    
    //MARK:- VARIABLES
    
    let ary = ["NAME" , "EMAIL ADDRESS" , "MOBILE NUMBER" , "SELECT NATIONALITY" , "CITY" , "DATE OF BIRTH" , "OCCUPATION" , "COMMENTS" ]
    
    let ary2 = ["John Doe" , "johndoe@gmail.com" , "124-2015-2015" , "Select" , "Dummy Text" , "YY-MM-DD" , "Select" , "Dummy Text"]
    
    //MARK:- VIEWCYCLE

    override func viewDidLoad() {
        super.viewDidLoad()
       setUpUi()
    }

    override func viewWillAppear(_ animated: Bool) {
       
    }

    //MARK:- PRIVATE FUNCTINOS
    
    func setUpUi()
    {
               setTitle(title: "SAVE DATA")
        self.navigationController?.navigationBar.isHidden = false
        Savedatabutton.setRadius()
         self.MainTableviewcell.separatorStyle = UITableViewCellSeparatorStyle.none
    }
    
    
       //MARK:- EXTENSIONS 
}
    extension SaveDataViewController : UITableViewDataSource , UITableViewDelegate
    {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    
        {
        return ary.count
        }
    
    @available(iOS 2.0, *)
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->   UITableViewCell
        {
        let a  = indexPath.row
        switch a {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? SavaDataTableViewCell
             cell?.OldPasswordLabel.text = ary[indexPath.row]
            cell?.downarrowimagevw.isHidden = true
            return cell!
            
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? SavaDataTableViewCell
            cell?.OldPasswordLabel.text = ary[indexPath.row]
            cell?.downarrowimagevw.isHidden = true
            return cell!
  
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? SavaDataTableViewCell
            cell?.OldPasswordLabel.text = ary[indexPath.row]
            cell?.downarrowimagevw.isHidden = true
            return cell!
            
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? SavaDataTableViewCell
            cell?.OldPasswordLabel.text = ary[indexPath.row]
            cell?.downarrowimagevw.isHidden = true
            return cell!
            
        case 7:
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? SavaDataTableViewCell
            cell?.OldPasswordLabel.text = ary[indexPath.row]
            cell?.downarrowimagevw.isHidden = true
            return cell!
                    

        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? SavaDataTableViewCell
            cell?.OldPasswordLabel.text = ary[indexPath.row]
return cell!
        }
        
        }
    
        func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
        }
    
        func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIView()
        }
    

}
