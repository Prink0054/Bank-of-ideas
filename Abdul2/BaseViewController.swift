//
//  BaseViewController.swift
//  Abdul
//
//  Created by 123 on 09/03/18.
//  Copyright © 2018 123. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
        

           }
//    
//    func navigateToFindDoctors(type: TabType = .noTab) {
//        let storyboard = UIStoryboard(storyboard: .Main)
//        let findvc = storyboard.instantiateViewController(withIdentifier: "FindDoctorsVC") as! FindDoctorsVC
//        findvc.tabType = type
//        let navigationController = UINavigationController(rootViewController: findvc)
//        UIView.transition(with: UIApplication.shared.keyWindow!, duration: 0.5, options: .transitionCrossDissolve, animations: {
//            UIApplication.shared.keyWindow?.rootViewController = navigationController
//        }, completion: nil)
//    }
    
    
    //MARK: - Navigate to view controller
    func navigateToViewController(storyboardName:String,viewID:String){
        
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let secondViewController = storyboard.instantiateViewController(withIdentifier: viewID) as UIViewController
        let transition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        transition.type = kCATransitionFade
        self.navigationController?.view.layer.add(transition, forKey: kCATransition)
        navigationController?.pushViewController(secondViewController, animated: false)
        
    }
    
    func backToPreviousVC() {
        let transition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        transition.type = kCATransitionFade
        self.view.window!.layer.add(transition, forKey: kCATransition)
        navigationController?.popViewController(animated: false)
    }

    
    //MARK: Navigation Items
    func setTitle(title: String) {
       UIApplication.shared.statusBarStyle = .lightContent
        
        self.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1158821806, green: 0.3597326279, blue: 0.653314054, alpha: 1)
        self.navigationItem.title = title
                self.navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
       
      
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.white]
        self.navigationController?.navigationBar.backItem?.title = "";
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.titleTextAttributes =
            [NSForegroundColorAttributeName: UIColor.white,
             NSFontAttributeName: UIFont(name: "Montserrat-Medium", size: 16)!]

    
    }
    
    func setTitle1(title: String) {
UIApplication.shared.statusBarStyle = .lightContent
       
        
        self.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1158821806, green: 0.3597326279, blue: 0.653314054, alpha: 1)
        self.navigationItem.title = title
        self.navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.blue]
        self.navigationController?.navigationBar.backItem?.title = "";
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.titleTextAttributes =
            [NSForegroundColorAttributeName: UIColor.blue,
             NSFontAttributeName: UIFont(name: "Montserrat-Medium", size: 19)!]
        
        
    }

    
    
    //MARK: Set Back Button
    func setBackButton(){
        let backButton = UIButton() //Custom back Button
        backButton.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        backButton.setImage( #imageLiteral(resourceName: "More-Icon-3x 2"), for: UIControlState.normal)
        backButton.addTarget(self, action: #selector(self.backButtonAction), for: UIControlEvents.touchUpInside)
        let leftBarButton = UIBarButtonItem()
        leftBarButton.customView = backButton
        self.navigationItem.leftBarButtonItem = leftBarButton
        
        let negativeSpacer = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.fixedSpace, target: nil, action: nil)
        negativeSpacer.width = -10;
        
        self.navigationItem.setLeftBarButtonItems([negativeSpacer, leftBarButton], animated: false)
    }
    
    @objc func backButtonAction() {
        let navObj = self.navigationController?.popViewController(animated: true)
        if navObj == nil {
            self.navigationController?.dismiss(animated: true, completion: nil)
        }
    }
    
    //MARK: Set SKIP Button
    func setSkipButton(){
        let backButton = UIButton() //Custom back Button
        backButton.frame = CGRect(x: 0, y: 0, width: 50, height: 25)
         backButton.setImage( #imageLiteral(resourceName: "plus-icon"), for: UIControlState.normal)
       // backButton.setTitle("SKIP", for: .normal)
//        backButton.setTitleColor(UIColor.HSColor.pink.color(), for: .normal)
//        backButton.titleLabel?.font = UIFont.HSFont.medium.fontWithSize(size: 16.0)
       backButton.addTarget(self, action: #selector(self.skipButtonAction), for: UIControlEvents.touchUpInside)
        let rightBarButton = UIBarButtonItem()
        rightBarButton.customView = backButton
        self.navigationItem.rightBarButtonItem = rightBarButton
        
        let negativeSpacer = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.fixedSpace, target: nil, action: nil)
        negativeSpacer.width = -15;
        
        self.navigationItem.setRightBarButtonItems([negativeSpacer, rightBarButton], animated: false)
    }
    
    @objc func skipButtonAction() {
        let navObj = self.navigationController?.popViewController(animated: true)
        if navObj == nil {
            self.navigationController?.dismiss(animated: true, completion: nil)
        }
    }
    
        
    
    func heightForView(text:String, font:UIFont, width:CGFloat) -> CGFloat{
        let label:UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: .greatestFiniteMagnitude))
        label.numberOfLines = 0
        label.font = font
        label.text = text
        label.sizeToFit()
        return label.frame.height
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

        
    
}
