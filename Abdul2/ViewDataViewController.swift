//
//  ViewDataViewController.swift
//  Abdul2
//
//  Created by 123 on 13/03/18.
//  Copyright © 2018 123. All rights reserved.
//

import UIKit

class ViewDataViewController: BaseViewController {
    
     //MARK:- IBOUTLETS
    @IBOutlet weak var tableview: UITableView!
    
    @IBOutlet weak var bottomView: UIView!

    @IBOutlet weak var Commentlabel: UILabel!
    
    //MARK:- VARIABLES
    let ary = ["NAME" , "EMAIL ADDRESS" , "MOBILE NUMBER" , "SELECT NATIONALITY" , "CITY" , "DATE OF BIRTH" , "OCCUPATION" ]
    
    


    //MARK:- VIEWCYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableview.separatorStyle = UITableViewCellSeparatorStyle.none
        
        
//       heightForView( text: "fqwabcfhfqyUBNQFHUcfhuy", font: UIFont.systemFont(ofSize: 17) , width: 255)
        
        
      
            }
        override func viewWillAppear(_ animated: Bool) {
        self.setTitle(title: "VIEW DATA")
        
            setCommentText(commentText: "ghygvjsdhghygvjsdhghygvjsdhghygvjsdhghygvjsdhghygvjsdhghygvjsdhghygvjsdhghygvjsdhghygvjsdhghygvjsdhghygvjsdhghygvjsdhghygvjsdhghygvjsdhghygvjsdhghygvjsdhghygvjsdhghygvjs")
          
            

        }
    
    func setCommentText(commentText:String)
    {
     Commentlabel.text = commentText
     
        
        
        var myFrame = bottomView.frame
    let height = self.heightForView(text: Commentlabel.text!, font: Commentlabel.font, width: Commentlabel.frame.size.width)
    
        if height > 100 {
            myFrame.size.height = height+50
            bottomView.frame = myFrame
        }
        
    
    
    }
    
    
    

}




//MARK:- EXTENSIONS

extension ViewDataViewController : UITableViewDataSource , UITableViewDelegate
{
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        
    {
        return ary.count
    }
    
    @available(iOS 2.0, *)
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->   UITableViewCell
    {
        
            

            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? SavaDataTableViewCell
            cell?.OldPasswordLabel.text = ary[indexPath.row]
            return cell!
        }
        
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIView()
    }
    
   
}

